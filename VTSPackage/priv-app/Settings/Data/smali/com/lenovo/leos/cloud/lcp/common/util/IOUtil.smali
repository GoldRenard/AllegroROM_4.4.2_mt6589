.class public final Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field public static final DFT_CHARSET:Ljava/lang/String; = "utf-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asynchronousClose([Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$1;-><init>([Ljava/io/Closeable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method public static varargs close([Ljava/io/Closeable;)V
    .locals 6
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 40
    :cond_0
    return-void

    .line 30
    :cond_1
    aget-object v0, p0, v2

    .line 31
    .local v0, "c":Ljava/io/Closeable;
    if-eqz v0, :cond_2

    .line 33
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "IOUTil"

    const-string v5, "Close failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 63
    return-void
.end method

.method public static fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;IZ)V
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .param p3, "closeIO"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x800

    .line 216
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/16 v5, 0x800

    :try_start_0
    new-array v0, v5, [B

    .line 222
    .local v0, "bf":[B
    const/4 v1, -0x1

    .line 223
    .local v1, "len":I
    const/4 v2, 0x0

    .line 224
    .local v2, "readCount":I
    if-le p2, v4, :cond_3

    move v3, v4

    .line 225
    .local v3, "readLength":I
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    if-lt v2, p2, :cond_4

    .line 231
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    new-array v4, v7, [Ljava/io/Closeable;

    .line 233
    aput-object p1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "readLength":I
    :cond_3
    move v3, p2

    .line 224
    goto :goto_1

    .line 226
    .restart local v3    # "readLength":I
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    add-int/2addr v2, v1

    .line 229
    sub-int v5, p2, v2

    if-le v5, v4, :cond_5

    move v3, v4

    :goto_2
    goto :goto_1

    :cond_5
    sub-int v3, p2, v2

    goto :goto_2

    .line 232
    .end local v0    # "bf":[B
    .end local v1    # "len":I
    .end local v2    # "readCount":I
    .end local v3    # "readLength":I
    :catchall_0
    move-exception v4

    new-array v5, v7, [Ljava/io/Closeable;

    .line 233
    aput-object p1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 234
    throw v4
.end method

.method public static fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "closeIO"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/16 v2, 0x800

    :try_start_0
    new-array v0, v2, [B

    .line 79
    .local v0, "buffer":[B
    const/4 v2, 0x0

    const/16 v3, 0x800

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 80
    .local v1, "size":I
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 84
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz p2, :cond_0

    new-array v2, v6, [Ljava/io/Closeable;

    .line 87
    aput-object p0, v2, v4

    aput-object p1, v2, v5

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 81
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    const/4 v2, 0x0

    const/16 v3, 0x800

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 85
    .end local v0    # "buffer":[B
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    .line 86
    if-eqz p2, :cond_3

    new-array v3, v6, [Ljava/io/Closeable;

    .line 87
    aput-object p0, v3, v4

    aput-object p1, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 89
    :cond_3
    throw v2
.end method

.method public static read(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->read(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/io/Reader;Z)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "closeReader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v3, 0x0

    .line 129
    :goto_0
    return-object v3

    .line 114
    :cond_0
    const/16 v3, 0x800

    new-array v0, v3, [C

    .line 115
    .local v0, "buffer":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 119
    .local v1, "count":I
    :goto_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 124
    if-eqz p1, :cond_1

    new-array v3, v4, [Ljava/io/Closeable;

    .line 125
    aput-object p0, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 129
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 120
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 123
    .end local v1    # "count":I
    :catchall_0
    move-exception v3

    .line 124
    if-eqz p1, :cond_3

    new-array v4, v4, [Ljava/io/Closeable;

    .line 125
    aput-object p0, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 127
    :cond_3
    throw v3
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 192
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readBytes(Ljava/io/InputStream;IZ)[B
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .param p2, "closeIO"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;IZ)V

    .line 205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readGzip(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "gis":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 143
    .local v1, "realBytes":[B
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object v2

    .line 145
    .local v2, "unzipBytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    new-array v4, v4, [Ljava/io/Closeable;

    .line 147
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 145
    return-object v3

    .line 146
    .end local v1    # "realBytes":[B
    .end local v2    # "unzipBytes":[B
    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    .line 147
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 148
    throw v3
.end method

.method public static readText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readText(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    if-nez p0, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    .line 164
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 165
    .local v0, "reader":Ljava/io/InputStreamReader;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->read(Ljava/io/Reader;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 166
    new-array v2, v2, [Ljava/io/Closeable;

    .line 167
    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 166
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v1

    new-array v2, v2, [Ljava/io/Closeable;

    .line 167
    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 168
    throw v1
.end method
