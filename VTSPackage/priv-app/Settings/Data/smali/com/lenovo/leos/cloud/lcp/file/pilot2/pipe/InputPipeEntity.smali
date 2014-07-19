.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputPipeEntity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V
    .locals 6
    .param p1, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 19
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 20
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_0
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_1
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    cmp-long v0, p4, v1

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_2
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    .line 24
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->isStreaming()Z

    move-result v0

    return v0
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
    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->writeToSupport:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->writeTo(Ljava/io/OutputStream;)V

    .line 49
    return-void
.end method
