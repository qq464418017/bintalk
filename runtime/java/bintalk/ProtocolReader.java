package com.admin.bintalk;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/**
 * @author spark
 * Create in 2018/7/10
 */
public class ProtocolReader {

    public static byte readByte(BinTalkUtil.ReaderStream rs) {
        return rs.read();
    }

    public static short readUnsignedByte(BinTalkUtil.ReaderStream rs) {
        return (short) (rs.read() & 0xFF);
    }

    public static short readShort(BinTalkUtil.ReaderStream rs) {
        return (short) (rs.read() & 0xFF | (rs.read() & 0xFF) << 0x8);
    }

    public static int readUnsignedShort(BinTalkUtil.ReaderStream rs) {
        return rs.read() & 0xFF
                | (rs.read() & 0xFF) << 0x8;
    }

    public static int readInt(BinTalkUtil.ReaderStream rs) {
        return rs.read() & 0xFF
                | (rs.read() & 0xFF) << 8
                | (rs.read() & 0xFF) << 16
                | (rs.read() & 0xFF) << 24;
    }

    public static long readUnsignedInt(BinTalkUtil.ReaderStream rs) {
        return rs.read() & 0xFFL
                | (rs.read() & 0xFFL) << 8
                | (rs.read() & 0xFFL) << 16
                | (rs.read() & 0xFFL) << 24;
    }

    public static long readLong(BinTalkUtil.ReaderStream rs) {
        return rs.read() & 0xFFL
                | (rs.read() & 0xFFL) << 8
                | (rs.read() & 0xFFL) << 16
                | (rs.read() & 0xFFL) << 24
                | (rs.read() & 0xFFL) << 32
                | (rs.read() & 0xFFL) << 40
                | (rs.read() & 0xFFL) << 48
                | (rs.read() & 0xFFL) << 56;
    }

    public static long readUnsignedLong(BinTalkUtil.ReaderStream rs) {
        return readLong(rs);
    }

    public static boolean readBoolean(BinTalkUtil.ReaderStream rs) {
        return rs.read() == 1;
    }

    public static float readFloat(BinTalkUtil.ReaderStream rs) {
        return Float.intBitsToFloat(
                rs.read() & 0xFF
                        | (rs.read() & 0xFF) << 8
                        | (rs.read() & 0xFF) << 16
                        | (rs.read() & 0xFF) << 24
        );
    }

    public static double readDouble(BinTalkUtil.ReaderStream rs) {
        return Double.longBitsToDouble(
                rs.read() & 0xFFL
                        | (rs.read() & 0xFFL) << 8
                        | (rs.read() & 0xFFL) << 16
                        | (rs.read() & 0xFFL) << 24
                        | (rs.read() & 0xFFL) << 32
                        | (rs.read() & 0xFFL) << 40
                        | (rs.read() & 0xFFL) << 48
                        | (rs.read() & 0xFFL) << 56
        );
    }

    public static byte[] readByteArray(BinTalkUtil.ReaderStream rs) {
        int size = readDynSize(rs);
        assert Integer.MAX_VALUE > size;
        byte[] values = new byte[size];
        for (int i = 0; i < size; i++) {
            values[i] = rs.read();
        }
        return values;
    }

    public static String readString(BinTalkUtil.ReaderStream rs) {
        return new String(readByteArray(rs));
    }

    public static <E> E readStruct(BinTalkUtil.ReaderStream rs, Class<E> clazz) {
        try {
            E value = clazz.newInstance();
            Method deserialize = clazz.getMethod("deserialize", BinTalkUtil.ReaderStream.class);
            deserialize.invoke(value, rs);
            return value;
        } catch (InstantiationException | NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static <E> List<E> readArrayList(BinTalkUtil.ReaderStream rs, IReader<E> reader) {
        int size = readDynSize(rs);
        assert Integer.MAX_VALUE > size;
        List<E> values = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            values.add(reader.read(rs));
        }
        return values;
    }

    public static <E> List<E> readStructArrayList(BinTalkUtil.ReaderStream rs, Class<E> clazz) {
        int size = readDynSize(rs);
        assert Integer.MAX_VALUE > size;
        List<E> values = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            values.add(readStruct(rs, clazz));
        }
        return values;
    }

    private static int readDynSize(BinTalkUtil.ReaderStream rs) {
        int b = rs.read() & 0xFF;
        int n = b >> 6;
        int size = (b & 0x3F);
        while (n > 0) {
            b = rs.read() & 0xFF;
            size = (size << 8) | b;
            n--;
        }
        return size;
    }
}
