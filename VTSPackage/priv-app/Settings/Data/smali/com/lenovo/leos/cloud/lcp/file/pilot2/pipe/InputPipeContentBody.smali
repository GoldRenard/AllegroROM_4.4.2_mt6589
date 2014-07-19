.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "InputPipeContentBody.java"


# instance fields
.field private charset:Ljava/lang/String;

.field private contentLength:J

.field private filename:Ljava/lang/String;

.field private writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V
    .locals 6
    .param p1, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    .prologue
    .line 16
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->contentLength:J

    .line 18
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->contentLength:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V

    .line 23
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->filename:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;)V

    .line 28
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->charset:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->contentLength:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->writeTo(Ljava/io/OutputStream;)V

    .line 39
    return-void
.end method
