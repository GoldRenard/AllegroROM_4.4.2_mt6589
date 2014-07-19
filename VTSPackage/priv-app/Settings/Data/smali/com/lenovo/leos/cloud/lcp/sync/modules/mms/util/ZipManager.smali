.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
.super Ljava/lang/Object;
.source "ZipManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAbsoluteFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "relatedFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "realFilePath":Ljava/lang/StringBuilder;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "ret":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->createDirectory(Ljava/io/File;)V

    .line 187
    return-object v1

    .line 182
    .end local v1    # "ret":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRelatedFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 200
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "relatedFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "baseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "baseFilePath":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    :cond_0
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    :cond_1
    return-object v2
.end method

.method private getSubFiles(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .param p1, "baseDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 154
    .local v2, "tmp":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 162
    return-object v1

    .line 155
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->getSubFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;-><init>()V

    .line 245
    .local v0, "manager":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
    :try_start_0
    const-string v1, "D:\\sync\\signed\\gggg\\signed"

    const-string v2, "D:\\sync\\signed\\gggg\\signed\\111.zip"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->createZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public createFileToZip(Ljava/io/File;Ljava/io/File;)J
    .locals 5
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "byZipedFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 99
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 102
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 103
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    return-wide v3
.end method

.method public createFileToZip(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "byZipedFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "byZipedFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "zipFile":Ljava/io/File;
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->createFileToZip(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public createZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "zipFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "directoryToSaveZip":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 40
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string v7, "this folder isnot exist!"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_0
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->getSubFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 61
    new-array v6, v10, [Ljava/io/Closeable;

    .line 62
    aput-object v5, v6, v9

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 64
    return-void

    .line 46
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 48
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->getRelatedFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 49
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 53
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 54
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .local v3, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v3, v5, v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    const/4 v7, 0x1

    :try_start_3
    new-array v7, v7, [Ljava/io/Closeable;

    const/4 v8, 0x0

    .line 58
    aput-object v3, v7, v8

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 61
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v6

    new-array v7, v10, [Ljava/io/Closeable;

    .line 62
    aput-object v5, v7, v9

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 63
    throw v6

    .line 57
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v6

    const/4 v7, 0x1

    :try_start_4
    new-array v7, v7, [Ljava/io/Closeable;

    const/4 v8, 0x0

    .line 58
    aput-object v3, v7, v8

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 59
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public releaseZipToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "sourceZip"    # Ljava/lang/String;
    .param p2, "storageDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v6, 0x0

    .line 116
    .local v6, "zfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 117
    .end local v6    # "zfile":Ljava/util/zip/ZipFile;
    .local v7, "zfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 118
    .local v4, "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/4 v5, 0x0

    .line 119
    .local v5, "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 137
    if-eqz v7, :cond_1

    .line 138
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V

    .line 141
    :cond_1
    return-void

    .line 121
    :cond_2
    :try_start_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 122
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 129
    .local v0, "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->getAbsoluteFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .end local v2    # "os":Ljava/io/OutputStream;
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_4
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 131
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    :try_start_5
    invoke-static {v1, v3, v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 132
    const/4 v8, 0x2

    :try_start_6
    new-array v8, v8, [Ljava/io/Closeable;

    const/4 v9, 0x0

    .line 133
    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 136
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .line 137
    .end local v7    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zfile":Ljava/util/zip/ZipFile;
    :goto_1
    if-eqz v6, :cond_3

    .line 138
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 140
    :cond_3
    throw v8

    .line 132
    .end local v6    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v4    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    :goto_2
    const/4 v9, 0x2

    :try_start_7
    new-array v9, v9, [Ljava/io/Closeable;

    const/4 v10, 0x0

    .line 133
    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 134
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v4    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    .end local v7    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zfile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v8

    goto :goto_1

    .line 132
    .end local v6    # "zfile":Ljava/util/zip/ZipFile;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "zList":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zfile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catchall_4
    move-exception v8

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public testReadZip()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v11, 0x400

    const/4 v10, 0x0

    .line 215
    const-string v0, "d://temp//zipout"

    .line 216
    .local v0, "baseDir":Ljava/lang/String;
    new-instance v7, Ljava/util/zip/ZipFile;

    const-string v8, "d://download//src.zip"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 218
    .local v7, "zfile":Ljava/util/zip/ZipFile;
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 219
    .local v5, "zList":Ljava/util/Enumeration;
    const/4 v6, 0x0

    .line 220
    .local v6, "ze":Ljava/util/zip/ZipEntry;
    new-array v1, v11, [B

    .line 221
    .local v1, "buf":[B
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_1

    .line 239
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V

    .line 240
    return-void

    .line 223
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "ze":Ljava/util/zip/ZipEntry;
    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 224
    .restart local v6    # "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 228
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    .line 229
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->getAbsoluteFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 228
    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 230
    .local v3, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v7, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 232
    .local v4, "readLen":I
    :goto_1
    invoke-virtual {v2, v1, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    .line 235
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 236
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v3, v1, v10, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1
.end method
