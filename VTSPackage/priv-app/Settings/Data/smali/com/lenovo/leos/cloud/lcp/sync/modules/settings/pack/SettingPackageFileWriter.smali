.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;
.super Ljava/lang/Object;
.source "SettingPackageFileWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private packageFilePath:Ljava/lang/String;

.field private zipOutputStream:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    .line 30
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingFileUtil;->getPackageFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->packageFilePath:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->packageFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->packageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public removePackageFile()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->packageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 44
    :cond_0
    return-void
.end method

.method public writePackageItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 55
    .local v3, "fis":Ljava/io/FileInputStream;
    const-string v5, "/"

    const-string v6, "_"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "entryName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 60
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 61
    .local v0, "buff":[B
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 62
    .local v4, "length":I
    :goto_0
    if-gtz v4, :cond_0

    .line 67
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    new-array v5, v8, [Ljava/io/Closeable;

    .line 69
    aput-object v3, v5, v7

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 72
    return-object v2

    .line 63
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 64
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 68
    .end local v0    # "buff":[B
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "length":I
    :catchall_0
    move-exception v5

    new-array v6, v8, [Ljava/io/Closeable;

    .line 69
    aput-object v3, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 70
    throw v5
.end method
