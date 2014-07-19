.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;
.super Ljava/lang/Object;
.source "MmsFileUtil.java"


# static fields
.field public static final MMS_CACHE_DIR:Ljava/lang/String; = "/mms/"

.field public static final MMS_TMP_DIR:Ljava/lang/String; = "tmp"

.field public static final TAG:Ljava/lang/String; = "MmsFileUtil"

.field private static applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 236
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Create directory failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method

.method public static createFile(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Create file failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Create file failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    return-void
.end method

.method public static deleteCacheDir(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "success":Z
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 199
    .local v1, "children":[Ljava/io/File;
    array-length v3, v1

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 212
    :goto_0
    return v2

    .line 202
    :cond_0
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 202
    :cond_1
    aget-object v0, v1, v3

    .line 203
    .local v0, "aChildren":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 202
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteCacheDir(Ljava/io/File;)Z

    move-result v2

    goto :goto_2
.end method

.method public static deleteMmsCacheDir()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 180
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getDir()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "storageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteCacheDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 186
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v4, "MmsFileUtil"

    const-string v5, " deleteMmsCacheDir FileNotFoundException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTmpFilePath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZipFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)Ljava/io/File;
    .locals 4
    .param p0, "result"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getTmpFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "tmpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createFile(Ljava/io/File;)V

    .line 230
    :cond_0
    return-object v0
.end method

.method public static putTempFile(ILjava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p0, "pduId"    # I
    .param p1, "fullname"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->putTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    new-array v1, v4, [Ljava/io/Closeable;

    .line 46
    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 48
    return-void

    .line 45
    :catchall_0
    move-exception v1

    new-array v2, v4, [Ljava/io/Closeable;

    .line 46
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 47
    throw v1
.end method

.method public static putTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fullname"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getDir()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "storageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "directory":Ljava/io/File;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createDirectory(Ljava/io/File;)V

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v1, "partFile":Ljava/io/File;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createFile(Ljava/io/File;)V

    .line 56
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v2, "partFos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    new-array v4, v7, [Ljava/io/Closeable;

    .line 60
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 62
    return-void

    .line 59
    :catchall_0
    move-exception v4

    new-array v5, v7, [Ljava/io/Closeable;

    .line 60
    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 61
    throw v4
.end method

.method public static putTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fullname"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "extras"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 65
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getDir()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "storageDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "directory":Ljava/io/File;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createDirectory(Ljava/io/File;)V

    .line 68
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v4, "partFile":Ljava/io/File;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createFile(Ljava/io/File;)V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 74
    .local v6, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->outputStreamToWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v6

    .line 75
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_1
    const-string v7, "smil"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 79
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    new-array v7, v11, [Ljava/io/Closeable;

    .line 87
    aput-object v1, v7, v9

    aput-object v6, v7, v10

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v0, v1

    .line 89
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 81
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    :cond_0
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 85
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v7, "MmsFileUtil"

    const-string v8, " putTempFile Exception"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    new-array v7, v11, [Ljava/io/Closeable;

    .line 87
    aput-object v0, v7, v9

    aput-object v6, v7, v10

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .line 86
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    new-array v8, v11, [Ljava/io/Closeable;

    .line 87
    aput-object v0, v8, v9

    aput-object v6, v8, v10

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 88
    throw v7

    .line 86
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 84
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 28
    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->applicationContext:Landroid/content/Context;

    .line 30
    :cond_0
    return-void
.end method

.method public static zip(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pduId"    # I
    .param p1, "zipname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->zip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "zipname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getDir()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "storageDir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, "pduIdNamedDirectory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 114
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-direct {v7}, Ljava/io/FileNotFoundException;-><init>()V

    throw v7

    .line 117
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "baseDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "zipFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "objFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 121
    .local v3, "objParentFile":Ljava/io/File;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createDirectory(Ljava/io/File;)V

    .line 122
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;-><init>()V

    .line 123
    .local v1, "manager":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
    invoke-virtual {v1, v0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->createZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v6
.end method


# virtual methods
.method public deleteDirByPduId(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pduIdString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 157
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getDir()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "storageDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "pduIdNamedDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    :goto_0
    return v5

    .line 163
    :cond_0
    const/4 v4, 0x1

    .line 164
    .local v4, "success":Z
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 165
    .local v1, "fileList":[Ljava/io/File;
    array-length v7, v1

    move v6, v5

    :goto_1
    if-lt v6, v7, :cond_1

    move v5, v4

    .line 168
    goto :goto_0

    .line 165
    :cond_1
    aget-object v0, v1, v6

    .line 166
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    .line 165
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    .line 166
    goto :goto_2
.end method

.method public unZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getDir()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "storageDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "pduIdNamedDirectory":Ljava/io/File;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createDirectory(Ljava/io/File;)V

    .line 140
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v4, "zipFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5

    .line 145
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "sourceZip":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;-><init>()V

    .line 147
    .local v0, "manager":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->releaseZipToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method
