.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;
.super Lorg/apache/http/entity/mime/content/InputStreamBody;
.source "ByteInputStreamBody.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteInputStreamBody"


# instance fields
.field private byteInput:Ljava/io/InputStream;

.field private bytesCache:[B

.field private contentLength:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->byteInput:Ljava/io/InputStream;

    .line 15
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->bytesCache:[B

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->contentLength:J

    .line 21
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->byteInput:Ljava/io/InputStream;

    .line 22
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getContentLength()J
    .locals 5

    .prologue
    .line 53
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->contentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 54
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->contentLength:J

    .line 64
    :goto_0
    return-wide v1

    .line 58
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->byteInput:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->bytesCache:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->bytesCache:[B

    if-nez v1, :cond_1

    invoke-super {p0}, Lorg/apache/http/entity/mime/content/InputStreamBody;->getContentLength()J

    move-result-wide v1

    :goto_2
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->contentLength:J

    .line 64
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->contentLength:J

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ByteInputStreamBody"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->bytesCache:[B

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->bytesCache:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "output stream can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->bytesCache:[B

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input stream can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/ByteInputStreamBody;->bytesCache:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 40
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 39
    throw v1
.end method
