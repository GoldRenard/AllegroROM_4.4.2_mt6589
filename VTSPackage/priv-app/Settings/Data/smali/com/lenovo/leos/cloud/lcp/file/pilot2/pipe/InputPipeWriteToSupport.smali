.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;
.super Ljava/lang/Object;
.source "InputPipeWriteToSupport.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BUFFER_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "InputPipeWriteToSupport"


# instance fields
.field private cache:[B

.field private cacheSize:I

.field private fisrtWriteTo:Z

.field private inputPipe:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

.field private final length:J

.field private final offsetInPipe:J

.field private pipeRepeatable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->$assertionsDisabled:Z

    .line 38
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V
    .locals 4
    .param p1, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->inputPipe:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->fisrtWriteTo:Z

    .line 65
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cache:[B

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cacheSize:I

    .line 28
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    cmp-long v0, p4, v2

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->inputPipe:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    .line 33
    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->offsetInPipe:J

    .line 34
    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->length:J

    .line 35
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->isRepeatable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->pipeRepeatable:Z

    .line 36
    return-void
.end method

.method private read([BJI)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "currentOffset"    # J
    .param p4, "sizeToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->offsetInPipe:J

    sub-long v1, p2, v1

    long-to-int v0, v1

    .line 70
    .local v0, "pointerInCache":I
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->fisrtWriteTo:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->pipeRepeatable:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cacheSize:I

    if-ne v1, v0, :cond_1

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->readFromPipe([BJI)I

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 72
    :cond_1
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cacheSize:I

    if-le v1, v0, :cond_2

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->readFromCache([BJI)I

    move-result v1

    goto :goto_0

    .line 75
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read data failed! parameter currentOffset should be wrong!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFromCache([BJI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "currentOffset"    # J
    .param p4, "sizeToRead"    # I

    .prologue
    .line 95
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->offsetInPipe:J

    sub-long v2, p2, v2

    long-to-int v0, v2

    .line 96
    .local v0, "pointerInCache":I
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cacheSize:I

    sub-int v1, v2, v0

    .line 97
    .local v1, "size":I
    if-le v1, p4, :cond_0

    .line 98
    move v1, p4

    .line 100
    :cond_0
    if-lez v1, :cond_1

    .line 101
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cache:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_1
    return v1
.end method

.method private readFromPipe([BJI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "currentOffset"    # J
    .param p4, "sizeToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->inputPipe:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->read([BJI)I

    move-result v1

    .line 81
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->pipeRepeatable:Z

    if-nez v2, :cond_1

    .line 82
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->offsetInPipe:J

    sub-long v2, p2, v2

    long-to-int v0, v2

    .line 83
    .local v0, "pointerInCache":I
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cacheSize:I

    if-ne v0, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cache:[B

    if-nez v2, :cond_0

    .line 85
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->length:J

    long-to-int v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cache:[B

    .line 87
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cache:[B

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cacheSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->cacheSize:I

    .line 91
    .end local v0    # "pointerInCache":I
    :cond_1
    return v1
.end method

.method private sizeToRead(J)I
    .locals 5
    .param p1, "currentOffset"    # J

    .prologue
    .line 107
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->length:J

    sub-long/2addr v1, p1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->offsetInPipe:J

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 108
    .local v0, "sizeToRead":I
    const/16 v1, 0x800

    if-le v0, v1, :cond_0

    .line 109
    const/16 v0, 0x800

    .line 111
    :cond_0
    return v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->inputPipe:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->offsetInPipe:J

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->length:J

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 42
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 44
    .local v0, "buffer":[B
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->offsetInPipe:J

    .line 45
    .local v1, "currentOffset":J
    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->sizeToRead(J)I

    move-result v4

    .line 46
    .local v4, "sizeToRead":I
    :goto_0
    if-gtz v4, :cond_1

    .line 62
    :cond_0
    iput-boolean v7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->fisrtWriteTo:Z

    .line 63
    return-void

    .line 47
    :cond_1
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->read([BJI)I

    move-result v3

    .line 48
    .local v3, "size":I
    if-eq v3, v4, :cond_2

    .line 49
    const-string v5, "InputPipeWriteToSupport"

    const-string v6, "WARNING: Not excepted data to read from pipeline, there must be some problem."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    if-lez v3, :cond_0

    .line 53
    invoke-virtual {p1, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    int-to-long v5, v3

    add-long/2addr v1, v5

    .line 59
    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeWriteToSupport;->sizeToRead(J)I

    move-result v4

    goto :goto_0
.end method
