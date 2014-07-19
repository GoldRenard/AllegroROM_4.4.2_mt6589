.class public final Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;
.super Ljava/lang/Object;
.source "GzipUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static gzip([B)[B
    .locals 9
    .param p0, "in"    # [B

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 43
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 45
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    .line 47
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 48
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 52
    new-array v5, v8, [Ljava/io/Closeable;

    .line 53
    aput-object v0, v5, v6

    aput-object v3, v5, v7

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 49
    return-object v4

    .line 50
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "This exception should not happen. If happend, there must be some unreasonable thing."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_1
    new-array v5, v8, [Ljava/io/Closeable;

    .line 53
    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 54
    throw v4

    .line 52
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_1

    .line 50
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method

.method public static ungzip(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "gis":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v0    # "gis":Ljava/util/zip/GZIPInputStream;
    .local v1, "gis":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 31
    new-array v3, v3, [Ljava/io/Closeable;

    .line 32
    aput-object v1, v3, v4

    aput-object p0, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 30
    return-object v2

    .line 31
    .end local v1    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    .line 32
    aput-object v0, v3, v4

    aput-object p0, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 33
    throw v2

    .line 31
    .end local v0    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "gis":Ljava/util/zip/GZIPInputStream;
    goto :goto_0
.end method

.method public static ungzip([B)[B
    .locals 7
    .param p0, "in"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 69
    new-array v4, v6, [Ljava/io/Closeable;

    .line 70
    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 66
    return-object v3

    .line 67
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ioe":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This exception should not happen. If happend, there must be some unreasonable thing."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    new-array v4, v6, [Ljava/io/Closeable;

    .line 70
    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 71
    throw v3

    .line 69
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 67
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method
