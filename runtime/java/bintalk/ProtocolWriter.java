package com.admin.bintalk;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public class ProtocolWriter {

    public static void writeByte(BinTalkUtil.WriterStream ws, byte value) {
        ws.write(value);
    }

    public static void writeUnsignedByte(BinTalkUtil.WriterStream ws, short value) {
        ws.write((byte) value);
    }

    public static void writeShort(BinTalkUtil.WriterStream ws, short value) {
        ws.write((byte) value);
        ws.write((byte) (value >> 8));
    }

    public static void writeUnsignedShort(BinTalkUtil.WriterStream ws, int value) {
        writeShort(ws, (short) value);
    }

    public static void writeInt(BinTalkUtil.WriterStream ws, int value) {
        ws.write((byte) value);
        ws.write((byte) (value >> 8));
        ws.write((byte) (value >> 16));
        ws.write((byte) (value >> 24));
    }

    public static void writeUnsignedInt(BinTalkUtil.WriterStream ws, long value) {
        writeInt(ws, (int) value);
    }

    public static void writeLong(BinTalkUtil.WriterStream ws, long value) {
        ws.write((byte) value);
        ws.write((byte) (value >> 8));
        ws.write((byte) (value >> 16));
        ws.write((byte) (value >> 24));
        ws.write((byte) (value >> 32));
        ws.write((byte) (value >> 40));
        ws.write((byte) (value >> 48));
        ws.write((byte) (value >> 56));
    }

    public static void writeUnsignedLong(BinTalkUtil.WriterStream ws, long value) {
        writeLong(ws, value);
    }

    public static void writeBoolean(BinTalkUtil.WriterStream ws, boolean value) {
        ws.write((byte) (value ? 1 : 0));
    }

    public static void writeFloat(BinTalkUtil.WriterStream ws, float value) {
        int bit = Float.floatToIntBits(value);
        ws.write((byte) (bit & 0xFF));
        ws.write((byte) ((bit >> 8) & 0xFF));
        ws.write((byte) ((bit >> 16) & 0xFF));
        ws.write((byte) ((bit >> 24) & 0xFF));
    }

    public static void writeDouble(BinTalkUtil.WriterStream ws, double value) {
        long bit = Double.doubleToLongBits(value);
        ws.write((byte) (bit & 0xFF));
        ws.write((byte) ((bit >> 8) & 0xFF));
        ws.write((byte) ((bit >> 16) & 0xFF));
        ws.write((byte) ((bit >> 24) & 0xFF));
        ws.write((byte) ((bit >> 32) & 0xFF));
        ws.write((byte) ((bit >> 40) & 0xFF));
        ws.write((byte) ((bit >> 48) & 0xFF));
        ws.write((byte) ((bit >> 56) & 0xFF));
    }

    public static void writeUnsignedByteEnum(BinTalkUtil.WriterStream ws, Enum<?> value) {
        ws.write((byte) (value.ordinal() & 0xFF));
    }

    public static void writeUnsignedShortEnum(BinTalkUtil.WriterStream ws, Enum<?> value) {
        ws.write((byte) (value.ordinal() & 0xFF));
        ws.write((byte) ((value.ordinal() >> 8) & 0xFF));
    }

    public static <E> void writeStruct(BinTalkUtil.WriterStream ws, E value) {
        try {
            Method serialize = value.getClass().getMethod("serialize", BinTalkUtil.WriterStream[].class);
            serialize.invoke(value, (Object) new BinTalkUtil.WriterStream[]{ws});
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    public static void writeString(BinTalkUtil.WriterStream ws, String value) {
        try {
            byte[] bytes = value.getBytes("UTF-8");
            writeSize(ws, bytes.length);
            for (byte aByte : bytes) {
                ws.write(aByte);
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public static void writeByteArray(BinTalkUtil.WriterStream ws, byte[] values) {
        writeSize(ws,values.length);
        for (byte b : values) {
            writeByte(ws, b);
        }
    }

    public static <E> void writeArrayList(BinTalkUtil.WriterStream ws, IWriter<E> write, List<E> values) {
        writeSize(ws, values.size());
        for (E value : values) {
            write.write(ws, value);
        }
    }

    public static void writeSize(BinTalkUtil.WriterStream ws, long len) {
        if (len <= 0x3F) {
            ws.write((byte) (len & 0xFF));
        } else if (len <= 0x3FFF) {
            len |= 1 << 14;
            ws.write((byte) ((len >> 8) & 0xFF));
            ws.write((byte) (len & 0xFF));
        } else if (len <= 0x3FFFFF) {
            len |= 2 << 22;
            ws.write((byte) ((len >> 16) & 0xFF));
            ws.write((byte) ((len >> 8) & 0xFF));
            ws.write((byte) (len & 0xFF));
        } else if (len <= 0x3FFFFFFF) {
            len |= 3L << 30;
            ws.write((byte) ((len >> 24) & 0xFF));
            ws.write((byte) ((len >> 16) & 0xFF));
            ws.write((byte) ((len >> 8) & 0xFF));
            ws.write((byte) (len & 0xFF));
        }
    }

}
