.class public Lorg/jets3t/service/io/GZipDeflatingInputStream;
.super Ljava/io/InputStream;
.source "GZipDeflatingInputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/InputStreamWrapper;


# instance fields
.field private BUFFER_SIZE:I

.field EOFDeflated:Z

.field EOFInput:Z

.field EOFTail:Z

.field private buffer:[B

.field bufferEnd:I

.field bufferOffset:I

.field private crc:Ljava/util/zip/CRC32;

.field private deflatedBytes:[B

.field deflater:Ljava/util/zip/Deflater;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    const/16 v1, 0x2000

    iput v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->BUFFER_SIZE:I

    .line 35
    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->inputStream:Ljava/io/InputStream;

    .line 37
    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->BUFFER_SIZE:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->buffer:[B

    .line 38
    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->BUFFER_SIZE:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    .line 39
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->crc:Ljava/util/zip/CRC32;

    .line 40
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    .line 41
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    .line 42
    iput-boolean v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFInput:Z

    .line 43
    iput-boolean v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFDeflated:Z

    .line 44
    iput-boolean v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFTail:Z

    .line 47
    iput-object p1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->inputStream:Ljava/io/InputStream;

    .line 48
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 51
    const v0, 0x8b1f

    .line 52
    .local v0, "GZIP_MAGIC":I
    invoke-direct {p0, v0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->writeShort(I)V

    .line 53
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    .line 54
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    aput-byte v4, v1, v2

    .line 55
    invoke-direct {p0, v4}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->writeInt(I)V

    .line 56
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    aput-byte v4, v1, v2

    .line 57
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    aput-byte v4, v1, v2

    .line 58
    return-void
.end method

.method private getDeflatedBufferAvail()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private primeDeflateBuffer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    .line 62
    :cond_0
    :goto_0
    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    if-nez v1, :cond_6

    .line 63
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    iput v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    .line 66
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    goto :goto_0

    .line 68
    :cond_1
    iget-boolean v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFInput:Z

    if-nez v1, :cond_3

    .line 70
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->buffer:[B

    iget-object v3, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->buffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 71
    .local v0, "byteCount":I
    if-lez v0, :cond_2

    .line 72
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->buffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 73
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->buffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 74
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    iput v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    .line 75
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    goto :goto_0

    .line 76
    :cond_2
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 81
    iput-boolean v5, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFInput:Z

    .line 82
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    .line 83
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    goto :goto_0

    .line 87
    .end local v0    # "byteCount":I
    :cond_3
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_4

    .line 88
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    iput v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    .line 89
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    goto :goto_0

    .line 90
    :cond_4
    iget-boolean v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFDeflated:Z

    if-nez v1, :cond_5

    .line 91
    iput-boolean v5, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFDeflated:Z

    .line 92
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    .line 93
    iput v4, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    .line 94
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->writeInt(I)V

    .line 95
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->writeInt(I)V

    goto/16 :goto_0

    .line 97
    :cond_5
    iput-boolean v5, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFTail:Z

    .line 103
    :cond_6
    return-void
.end method

.method private writeInt(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    const v1, 0xffff

    .line 165
    and-int v0, p1, v1

    invoke-direct {p0, v0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->writeShort(I)V

    .line 166
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->writeShort(I)V

    .line 167
    return-void
.end method

.method private writeShort(I)V
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    iget-object v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 175
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFTail:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, -0x1

    .line 149
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->getDeflatedBufferAvail()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->primeDeflateBuffer()V

    .line 149
    :cond_1
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->getDeflatedBufferAvail()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFTail:Z

    .line 154
    iget-object v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 155
    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->getDeflatedBufferAvail()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->primeDeflateBuffer()V

    .line 113
    :cond_0
    iget-boolean v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFTail:Z

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, -0x1

    .line 116
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->getDeflatedBufferAvail()I

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->primeDeflateBuffer()V

    .line 124
    :cond_0
    iget-boolean v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->EOFTail:Z

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, -0x1

    .line 138
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->getDeflatedBufferAvail()I

    move-result v1

    if-le p3, v1, :cond_2

    .line 129
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipDeflatingInputStream;->getDeflatedBufferAvail()I

    move-result v0

    .line 130
    .local v0, "bytesAvailable":I
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iput v3, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    .line 132
    iput v3, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferEnd:I

    goto :goto_0

    .line 136
    .end local v0    # "bytesAvailable":I
    :cond_2
    iget-object v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->deflatedBytes:[B

    iget v2, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/jets3t/service/io/GZipDeflatingInputStream;->bufferOffset:I

    move v0, p3

    .line 138
    goto :goto_0
.end method
