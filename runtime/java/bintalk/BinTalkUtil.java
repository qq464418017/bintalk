package com.admin.bintalk;

import java.util.LinkedList;
import java.util.List;

/**
 * 下标封装
 *
 * @author spark
 * Create in 2018/7/10
 */
public class BinTalkUtil {

    /**
     * 读取流
     */
    public static class ReaderStream {
        private final byte[] bytes;
        private int offset;

        /**
         * @param bytes 将要读取的内容
         */
        public ReaderStream(byte[] bytes) {
            this.bytes = bytes;
            this.offset = 0;
        }

        /**
         * @return 读取一字节
         */
        public byte read() {
            return this.bytes[this.offset++];
        }
    }

    /**
     * 写入流
     */
    public static class WriterStream {
        private final List<Byte> linkList;

        /**
         * 构造写入流，默认使用链表
         */
        public WriterStream() {
            this.linkList = new LinkedList<>();
        }

        /**
         * 构造写入流，使用自定义List结构
         * @param list List接口实现
         */
        public WriterStream(List<Byte> list) {
            this.linkList = list;
        }

        /**
         * @param bytes 写一字节
         */
        public void write(byte bytes) {
            this.linkList.add(bytes);
        }

        /**
         * @return 读取List结构内容返回字节数组
         */
        public byte[] toByteArray() {
            byte[] bytes = new byte[this.linkList.size()];
            int index = 0;
            for (byte b : this.linkList) {
                bytes[index++] = b;
            }
            return bytes;
        }
    }

}
