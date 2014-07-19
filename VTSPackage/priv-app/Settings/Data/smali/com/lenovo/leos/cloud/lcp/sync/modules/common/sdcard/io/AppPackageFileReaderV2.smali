.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
.source "AppPackageFileReaderV2.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppPackageFileReaderV2"


# instance fields
.field private appDir:Ljava/io/File;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->appDir:Ljava/io/File;

    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->appDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->fileName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->getAppDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getAppDir()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->appDir:Ljava/io/File;

    const-string v2, "software"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    return-object v0
.end method


# virtual methods
.method public readAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->read(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;)V

    .line 91
    return-object v0
.end method

.method protected readFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;Ljava/lang/String;)V
    .locals 13
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;
    .param p2, "packageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, "jsonContent":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 125
    .local v2, "bufferString":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v3, "importFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->fileName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v4, "infoFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 128
    .local v6, "reader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 130
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 146
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .local v7, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 138
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;->onReadEntry(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    new-array v8, v12, [Ljava/io/Closeable;

    .line 144
    aput-object v7, v8, v10

    aput-object v1, v8, v11

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 146
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 139
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :goto_2
    new-array v9, v12, [Ljava/io/Closeable;

    .line 144
    aput-object v6, v9, v10

    aput-object v0, v9, v11

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 145
    throw v8

    .line 143
    :catchall_1
    move-exception v8

    goto :goto_2

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method protected readMetaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "packageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 96
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "metaInfoString":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 98
    .local v2, "bufferString":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "importFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "info.mt"

    invoke-direct {v4, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v4, "infoFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 101
    .local v6, "reader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 103
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 118
    :goto_0
    return-object v8

    .line 108
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .local v7, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 111
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    new-array v8, v12, [Ljava/io/Closeable;

    .line 115
    aput-object v7, v8, v10

    aput-object v1, v8, v11

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 112
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :goto_2
    new-array v9, v12, [Ljava/io/Closeable;

    .line 115
    aput-object v6, v9, v10

    aput-object v0, v9, v11

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 116
    throw v8

    .line 114
    :catchall_1
    move-exception v8

    goto :goto_2

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2
.end method
