.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;
.super Ljava/lang/Object;
.source "SettingPackageFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;
    }
.end annotation


# instance fields
.field private packageFilePath:Ljava/lang/String;

.field private zipInputStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->packageFilePath:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->packageFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 53
    :cond_0
    return-void
.end method

.method public getPackageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->packageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public readPackageItem(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;)V
    .locals 5
    .param p1, "readEntryName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->packageFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 46
    return-void

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "entryName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-interface {p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;->onGetInputStream(Ljava/io/InputStream;)V

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0
.end method

.method public removePackageFile()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->packageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 30
    :cond_0
    return-void
.end method
