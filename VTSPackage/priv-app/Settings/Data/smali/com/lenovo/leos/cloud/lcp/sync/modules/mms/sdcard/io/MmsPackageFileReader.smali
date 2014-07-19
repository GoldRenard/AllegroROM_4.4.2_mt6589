.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
.source "MmsPackageFileReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsPackageFileReader"


# instance fields
.field private fileName:Ljava/lang/String;

.field private sourceDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->sourceDir:Ljava/io/File;

    .line 35
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->sourceDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->fileName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getMmsDir()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->sourceDir:Ljava/io/File;

    const-string v3, "mmsFileData"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 42
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 43
    const-string v2, "MmsPackageFileReader"

    const-string v3, "getMmsDir mkdirs failed, this maybe cause some error after the functions."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v1    # "success":Z
    :cond_0
    return-object v0
.end method

.method protected readFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;Ljava/lang/String;)V
    .locals 12
    .param p1, "callback"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;
    .param p2, "packageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 117
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 118
    .local v5, "jsonContent":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 119
    .local v2, "bufferString":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "importFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->fileName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v4, "infoFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 122
    .local v6, "reader":Ljava/io/Reader;
    const/4 v0, 0x0

    .line 124
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->inputStreamToReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v6

    .line 129
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;->onReadEntry(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    new-array v7, v11, [Ljava/io/Closeable;

    .line 136
    aput-object v1, v7, v9

    aput-object v6, v7, v10

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v0, v1

    .line 138
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 132
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    :goto_2
    new-array v8, v11, [Ljava/io/Closeable;

    .line 136
    aput-object v0, v8, v9

    aput-object v6, v8, v10

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 137
    throw v7

    .line 135
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method protected readMetaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "packageFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 90
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 91
    .local v5, "metaInfoString":Ljava/lang/StringBuffer;
    const-string v2, ""

    .line 92
    .local v2, "bufferString":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "importFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "info.mt"

    invoke-direct {v4, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v4, "infoFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 95
    .local v6, "reader":Ljava/io/Reader;
    const/4 v0, 0x0

    .line 97
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    :goto_0
    return-object v7

    .line 102
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->inputStreamToReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v6

    .line 103
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 108
    new-array v7, v8, [Ljava/io/Closeable;

    .line 109
    aput-object v6, v7, v9

    aput-object v1, v7, v10

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 106
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    :goto_2
    new-array v8, v8, [Ljava/io/Closeable;

    .line 109
    aput-object v6, v8, v9

    aput-object v0, v8, v10

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 110
    throw v7

    .line 108
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method public readMmsList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->read(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;)V

    .line 85
    return-object v0
.end method
