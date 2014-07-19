.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge;
.super Ljava/lang/Object;
.source "FileTypeJudge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge$FileType;
    }
.end annotation


# static fields
.field private static final FILE_TYPE_HEADER_SIZE:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "FileTypeJudge"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 32
    :cond_0
    const/4 v4, 0x0

    .line 42
    :goto_0
    return-object v4

    .line 34
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 35
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 36
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getFileHeaderText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    new-array v0, v4, [B

    .line 58
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 60
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 62
    .local v3, "size":I
    if-ge v3, v4, :cond_0

    .line 63
    const-string v4, "FileTypeJudge"

    const-string v5, "WARNING: the header size is too small!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :cond_0
    new-array v4, v7, [Ljava/io/Closeable;

    .line 66
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 68
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 65
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "size":I
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    :goto_0
    new-array v5, v7, [Ljava/io/Closeable;

    .line 66
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 67
    throw v4

    .line 65
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge$FileType;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge;->getFileHeaderText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "fileHead":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v2, v3

    .line 95
    :cond_1
    :goto_0
    return-object v2

    .line 85
    :cond_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge$FileType;->values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge$FileType;

    move-result-object v1

    .line 89
    .local v1, "fileTypes":[Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge$FileType;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_3

    move-object v2, v3

    .line 95
    goto :goto_0

    .line 89
    :cond_3
    aget-object v2, v1, v4

    .line 90
    .local v2, "type":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge$FileType;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/FileTypeJudge$FileType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
