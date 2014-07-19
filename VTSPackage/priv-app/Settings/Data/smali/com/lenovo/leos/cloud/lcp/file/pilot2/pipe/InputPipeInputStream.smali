.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;
.super Ljava/io/InputStream;
.source "InputPipeInputStream.java"


# instance fields
.field private currentOffset:J

.field private final length:J

.field private final offset:J

.field private pipeline:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V
    .locals 0
    .param p1, "pipeline"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->pipeline:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    .line 15
    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->offset:J

    .line 16
    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->length:J

    .line 17
    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    .line 18
    return-void
.end method

.method private sizeToRead(I)I
    .locals 5
    .param p1, "bufferSize"    # I

    .prologue
    .line 52
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->length:J

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->offset:J

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 53
    .local v0, "sizeToRead":I
    if-le v0, p1, :cond_0

    .line 54
    move v0, p1

    .line 56
    :cond_0
    return v0
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 22
    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->sizeToRead(I)I

    move-result v3

    .line 24
    .local v3, "sizeToRead":I
    if-lez v3, :cond_1

    .line 25
    new-array v0, v4, [B

    .line 26
    .local v0, "buffer":[B
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->pipeline:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    invoke-interface {v4, v0, v5, v6, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->read([BJI)I

    move-result v4

    int-to-long v1, v4

    .line 27
    .local v1, "size":J
    const-wide/16 v4, 0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 28
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipline should have data, but can\'t read more!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 31
    :cond_0
    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    .line 32
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    .line 34
    .end local v0    # "buffer":[B
    .end local v1    # "size":J
    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->sizeToRead(I)I

    move-result v1

    .line 40
    .local v1, "sizeToRead":I
    if-lez v1, :cond_1

    .line 41
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->pipeline:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    invoke-interface {v2, p1, v3, v4, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->read([BJI)I

    move-result v0

    .line 42
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 43
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->currentOffset:J

    .line 47
    .end local v0    # "size":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
