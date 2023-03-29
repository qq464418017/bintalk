package com.admin.bintalk;

import com.admin.bintalk.BinTalkUtil.WriterStream;

/**
 * @author spark
 */
public interface IWriter<E> {
    /**
     * 写接口
     *
     * @param ws {@link WriterStream}
     * @param value 要写的数据
     */
    void write(WriterStream ws, E value);
}
