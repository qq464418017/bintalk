package com.admin.bintalk;

import com.admin.bintalk.BinTalkUtil.ReaderStream;

/**
 * @author spark
 */
public interface IReader<E> {
    /**
     * 读接口
     *
     * @param rs {@link ReaderStream}
     * @return 泛型对象
     */
    E read(ReaderStream rs);
}
