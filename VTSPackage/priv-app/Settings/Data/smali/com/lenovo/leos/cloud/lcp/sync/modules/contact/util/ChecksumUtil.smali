.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;
.super Ljava/lang/Object;
.source "ChecksumUtil.java"


# static fields
.field private static final BYTE_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adler32([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .prologue
    .line 19
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 20
    .local v0, "adler":Ljava/util/zip/Adler32;
    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 21
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->int2ByteArray(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->base16([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static base16([B)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 28
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static computeChecksum(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "checksumStr"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    .local v0, "bytes":[B
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 50
    .local v2, "ret":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->adler32([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 51
    const/4 v3, 0x1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->crc32([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-object v2

    .line 53
    .end local v0    # "bytes":[B
    .end local v2    # "ret":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "UTF-8 not support!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static crc32([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .prologue
    .line 13
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 14
    .local v0, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 15
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->int2ByteArray(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->base16([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static int2ByteArray(I)[B
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 38
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 39
    .local v0, "b":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 40
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 41
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 42
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 43
    return-object v0
.end method
