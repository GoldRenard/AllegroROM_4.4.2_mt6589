.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
.super Ljava/lang/Object;
.source "PackageFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;
    }
.end annotation


# instance fields
.field protected filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->filePath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private prepareReadFile()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->filePath:Ljava/lang/String;

    .line 60
    .local v0, "packageFile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "import file is null"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    return-object v0
.end method


# virtual methods
.method public existsFile()Z
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public read(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->prepareReadFile()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "packageFile":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->readFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected readFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;
    .param p2, "packageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "importFile":Ljava/io/File;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    const/4 v0, 0x0

    .line 89
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 99
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "entryName":Ljava/lang/String;
    const-string v5, ".mt"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "jsonContent":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;->onReadEntry(Ljava/lang/String;)V

    .line 96
    .end local v3    # "jsonContent":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0
.end method

.method protected readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 105
    .local v1, "bf":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 106
    .local v2, "len":I
    :goto_0
    if-gtz v2, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 112
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 113
    const-string v5, "UTF-8"

    .line 112
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 107
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 108
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0
.end method

.method public readMetaInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->prepareReadFile()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "packageFile":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->readMetaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected readMetaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v4, 0x0

    .line 37
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "importFile":Ljava/io/File;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    const-string v3, ""

    .line 41
    .local v3, "metaInfoString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 42
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 54
    return-object v3

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "entryName":Ljava/lang/String;
    const-string v5, ".mt"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0
.end method
