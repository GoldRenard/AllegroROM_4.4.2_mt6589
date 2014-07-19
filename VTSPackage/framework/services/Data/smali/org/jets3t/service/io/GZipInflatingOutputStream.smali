.class public Lorg/jets3t/service/io/GZipInflatingOutputStream;
.super Ljava/io/OutputStream;
.source "GZipInflatingOutputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/OutputStreamWrapper;


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FTEXT:I = 0x1

.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field private BUFFER_SIZE:I

.field private crc:Ljava/util/zip/CRC32;

.field private expectedHeaderLength:I

.field private finishedHeader:Z

.field private headerBytes:[B

.field private headerFlag:I

.field private headerLength:I

.field private headerOffset:I

.field private inflatedBytes:[B

.field private inflater:Ljava/util/zip/Inflater;

.field private outputStream:Ljava/io/OutputStream;

.field private trailerBytes:[B

.field private trailerOffset:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 49
    const/16 v0, 0x2000

    iput v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->BUFFER_SIZE:I

    .line 51
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    .line 52
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 54
    iget v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->BUFFER_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflatedBytes:[B

    .line 57
    iput-boolean v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->finishedHeader:Z

    .line 58
    const/16 v0, 0x9c

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    .line 59
    iput v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 60
    iput v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    .line 61
    iput v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    .line 62
    iput v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerBytes:[B

    .line 66
    iput v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    .line 70
    iput-object p1, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 71
    iget-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 73
    return-void
.end method

.method private bytesToInt([BI)J
    .locals 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->bytesToShort([BI)I

    move-result v1

    .line 261
    .local v1, "low":I
    add-int/lit8 v2, p2, 0x2

    invoke-direct {p0, p1, v2}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->bytesToShort([BI)I

    move-result v0

    .line 262
    .local v0, "high":I
    int-to-long v2, v0

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private bytesToShort([BI)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 254
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .line 255
    .local v1, "low":I
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 256
    .local v0, "high":I
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method private inflateData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, -0x1

    .line 78
    .local v0, "bytesWritten":I
    :goto_0
    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflatedBytes:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflatedBytes:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 80
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflatedBytes:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v3, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflatedBytes:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 85
    throw v1

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/util/zip/DataFormatException;
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 88
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid GZip data output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    :cond_0
    return-void
.end method

.method private parseHeader([BII)V
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    iget-object v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 95
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    add-int v7, p2, v3

    aget-byte v7, p1, v7

    aput-byte v7, v5, v6

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    if-nez v5, :cond_6

    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_6

    .line 101
    const v0, 0x8b1f

    .line 102
    .local v0, "GZIP_MAGIC":I
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->bytesToShort([BI)I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 103
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 104
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Not in GZIP format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_1
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 108
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 109
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected compression method"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_2
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    .line 116
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x6

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 117
    const/16 v5, 0xa

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    .line 119
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 120
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 122
    :cond_3
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 123
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 125
    :cond_4
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_5

    .line 126
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 129
    :cond_5
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 130
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 135
    .end local v0    # "GZIP_MAGIC":I
    :cond_6
    :goto_1
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    if-eq v5, v6, :cond_b

    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    if-lt v5, v6, :cond_b

    .line 137
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 139
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    invoke-direct {p0, v5, v6}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->bytesToShort([BI)I

    move-result v1

    .line 140
    .local v1, "fieldLength":I
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    .line 141
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    add-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    goto :goto_1

    .line 144
    .end local v1    # "fieldLength":I
    :cond_7
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_8

    .line 145
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    aget-byte v5, v5, v6

    int-to-char v2, v5

    .line 146
    .local v2, "fnameChar":C
    if-eqz v2, :cond_6

    .line 148
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    goto :goto_1

    .line 152
    .end local v2    # "fnameChar":C
    :cond_8
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_9

    .line 154
    :goto_2
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    if-eqz v5, :cond_6

    .line 155
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    .line 156
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    goto :goto_2

    .line 160
    :cond_9
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerFlag:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 161
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    const/4 v7, 0x0

    iget v8, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/zip/CRC32;->update([BII)V

    .line 162
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    long-to-int v5, v5

    const v6, 0xffff

    and-int v4, v5, v6

    .line 163
    .local v4, "v":I
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    invoke-direct {p0, v5, v6}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->bytesToShort([BI)I

    move-result v5

    if-eq v5, v4, :cond_a

    .line 164
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 165
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Corrupt GZIP header"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_a
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 168
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    .line 169
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    goto/16 :goto_1

    .line 173
    .end local v4    # "v":I
    :cond_b
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    if-ne v5, v6, :cond_d

    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->expectedHeaderLength:I

    if-lt v5, v6, :cond_d

    .line 176
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->finishedHeader:Z

    .line 178
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    if-le v5, v6, :cond_c

    .line 179
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    iget-object v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerBytes:[B

    iget v7, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    iget v8, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    iget v9, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 182
    :cond_c
    iget v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerLength:I

    if-le p3, v5, :cond_d

    .line 183
    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    iget v7, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->headerOffset:I

    sub-int v7, p3, v7

    invoke-virtual {v5, p1, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 186
    :cond_d
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 233
    iget-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    if-eqz v4, :cond_3

    .line 236
    iget v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    iget-object v5, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerBytes:[B

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 237
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt GZIP trailer, trailer is incomplete. Expected 8 bytes, only have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_0
    iget-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerBytes:[B

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->bytesToInt([BI)J

    move-result-wide v2

    .line 241
    .local v2, "trailerCrc":J
    iget-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 242
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Corrupt GZIP trailer, CRC values mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_1
    iget-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerBytes:[B

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->bytesToInt([BI)J

    move-result-wide v0

    .line 245
    .local v0, "trailerByteCount":J
    iget-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 246
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Corrupt GZIP trailer, actual size of inflated data mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :cond_2
    iget-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 249
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    .line 251
    .end local v0    # "trailerByteCount":J
    .end local v2    # "trailerCrc":J
    :cond_3
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 228
    return-void
.end method

.method public getWrappedOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    new-array v0, v3, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 190
    .local v0, "single":[B
    invoke-virtual {p0, v0, v2, v3}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->write([BII)V

    .line 191
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    if-gtz p3, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-boolean v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->finishedHeader:Z

    if-nez v2, :cond_2

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->parseHeader([BII)V

    .line 205
    :goto_1
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    invoke-direct {p0}, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflateData()V

    .line 208
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 210
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    sub-int v0, p3, v2

    .line 211
    .local v0, "trailerOffsetInInput":I
    :goto_2
    iget v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    iget-object v3, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 212
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerBytes:[B

    iget v3, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "trailerOffsetInInput":I
    .local v1, "trailerOffsetInInput":I
    aget-byte v4, p1, v0

    aput-byte v4, v2, v3

    move v0, v1

    .end local v1    # "trailerOffsetInInput":I
    .restart local v0    # "trailerOffsetInInput":I
    goto :goto_2

    .line 202
    .end local v0    # "trailerOffsetInInput":I
    :cond_2
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_1

    .line 217
    :cond_3
    iget v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerBytes:[B

    array-length v3, v3

    if-le v2, v3, :cond_4

    .line 218
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 219
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Corrupt GZIP trailer, too many trailer bytes (only 8 expected)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_4
    iget-object v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerBytes:[B

    iget v3, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/jets3t/service/io/GZipInflatingOutputStream;->trailerOffset:I

    goto :goto_0
.end method
