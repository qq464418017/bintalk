package com.admin.bintalk;

public interface IBinTalk {

    byte[] serialize(BinTalkUtil.WriterStream... ws);

    Object deserialize(BinTalkUtil.ReaderStream rs);
}
