.class public Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "objFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x400

    const/4 v12, 0x0

    .line 24
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v3, "folderObject":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 26
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->getSubFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 28
    .local v2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    .local v8, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v7, 0x0

    .line 30
    .local v7, "ze":Ljava/util/zip/ZipEntry;
    new-array v0, v13, [B

    .line 31
    .local v0, "buf":[B
    const/4 v6, 0x0

    .line 32
    .local v6, "readLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lt v4, v9, :cond_0

    .line 48
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 52
    return-void

    .line 33
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 34
    .local v1, "f":Ljava/io/File;
    const-string v9, "ZipUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Adding: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v7, Ljava/util/zip/ZipEntry;

    .end local v7    # "ze":Ljava/util/zip/ZipEntry;
    invoke-static {p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->getAbsFileName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v7    # "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 40
    invoke-virtual {v8, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 41
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local v5, "is":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v5, v0, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    .line 45
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 46
    const-string v9, "ZipUtil"

    const-string v10, "done..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v8, v0, v12, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 50
    .end local v0    # "buf":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v4    # "i":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "readLen":I
    .end local v7    # "ze":Ljava/util/zip/ZipEntry;
    .end local v8    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_2
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "this folder isnot exist!"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static delAllFile(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "flag":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 145
    .end local v1    # "flag":Z
    .local v2, "flag":I
    :goto_0
    return v2

    .line 125
    .end local v2    # "flag":I
    .restart local v1    # "flag":Z
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v1

    .line 126
    .restart local v2    # "flag":I
    goto :goto_0

    .line 128
    .end local v2    # "flag":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "tempList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 130
    .local v4, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v5

    if-lt v3, v6, :cond_2

    move v2, v1

    .line 145
    .restart local v2    # "flag":I
    goto :goto_0

    .line 131
    .end local v2    # "flag":I
    :cond_2
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    new-instance v4, Ljava/io/File;

    .end local v4    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v4    # "temp":Ljava/io/File;
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 139
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->delAllFile(Ljava/lang/String;)Z

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->delFolder(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x1

    .line 130
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    :cond_5
    new-instance v4, Ljava/io/File;

    .end local v4    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "temp":Ljava/io/File;
    goto :goto_2
.end method

.method public static delFolder(Ljava/lang/String;)V
    .locals 3
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->delAllFile(Ljava/lang/String;)Z

    .line 106
    move-object v1, p0

    .line 107
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "myFilePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "myFilePath":Ljava/io/File;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getAbsFileName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "realFileName"    # Ljava/io/File;

    .prologue
    .line 83
    move-object v1, p1

    .line 84
    .local v1, "real":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "base":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 88
    if-nez v1, :cond_1

    .line 96
    :cond_0
    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "K "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v2

    .line 90
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    goto :goto_0
.end method

.method private static getSubFiles(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .param p0, "baseDir"    # Ljava/io/File;
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
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 63
    .local v2, "tmp":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 71
    return-object v1

    .line 64
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->getSubFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
