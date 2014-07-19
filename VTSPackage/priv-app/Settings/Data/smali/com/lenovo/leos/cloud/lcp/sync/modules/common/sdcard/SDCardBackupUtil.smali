.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;
.super Ljava/lang/Object;
.source "SDCardBackupUtil.java"


# static fields
.field public static final DELETE_TMP_FILE_DELAY:J = 0x2932e00L

.field public static final DFT_EXPORT_FORMAT:Ljava/lang/String; = ".zip"

.field public static final DFT_EXPORT_FORMAT_START:Ljava/lang/String; = "ec-"

.field public static final DFT_EXPORT_PATH:Ljava/lang/String; = "/data/com.lenovo.leos.cloud.sync/backup"

.field public static final MODULE_APP:Ljava/lang/String; = "app"

.field public static final MODULE_CALLLOG:Ljava/lang/String; = "Calllog"

.field public static final MODULE_CONTACT:Ljava/lang/String; = "contact"

.field public static final MODULE_MMS:Ljava/lang/String; = "mms"

.field public static final MODULE_SMS:Ljava/lang/String; = "sms"

.field private static final TAG:Ljava/lang/String; = "SDCardBackupUtil"

.field public static final TMP_DIR_EXPORT_FORMAT:Ljava/lang/String; = "-tmp"

.field public static final TMP_FILE_EXPORT_FORMAT:Ljava/lang/String; = ".tmp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0([Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V
    .locals 0

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->createMessages([Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V

    return-void
.end method

.method private static createMessages([Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V
    .locals 5
    .param p0, "files"    # [Ljava/lang/String;
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;

    .prologue
    .line 161
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 163
    .local v0, "allMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "len":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v3, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$Mycomparator;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$Mycomparator;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    invoke-interface {p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;->onfinish(Ljava/util/List;)Z

    .line 172
    return-void

    .line 164
    .end local v3    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;>;"
    :cond_0
    aget-object v4, p0, v1

    invoke-static {v4, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->createOneMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createOneMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "allMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->readDataFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "infos":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 187
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;

    .line 188
    .local v3, "message":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
    if-nez v3, :cond_2

    .line 189
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;

    .end local v3    # "message":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v3    # "message":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2
    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string v5, "sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setSMSCount(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setSMSFileName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "infos":[Ljava/lang/String;
    .end local v3    # "message":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDCardBackupUtil"

    const-string v5, "Unexcepted Exception occurs!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "infos":[Ljava/lang/String;
    .restart local v3    # "message":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
    :cond_3
    const/4 v4, 0x2

    :try_start_1
    aget-object v4, v2, v4

    const-string v5, "Calllog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setCalllogCount(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setCalllogFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_4
    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string v5, "contact"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setContactCount(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setContactFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_5
    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string v5, "app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 203
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setAppCount(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setAppFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_6
    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string v5, "mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setMmsCount(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->setMmsFileName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "deleteFile"    # Ljava/io/File;

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "succ":Z
    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "child":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 107
    .end local v0    # "child":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 108
    const-string v3, "####"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " delete file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 110
    :goto_1
    return v3

    .line 99
    .restart local v0    # "child":[Ljava/io/File;
    .restart local v1    # "i":I
    :cond_1
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    const/4 v3, 0x0

    goto :goto_1

    .line 98
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deleteTmpFile(Ljava/io/File;)V
    .locals 13
    .param p0, "rootpath"    # Ljava/io/File;

    .prologue
    const-wide/32 v11, 0x2932e00

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 436
    .local v0, "currentTime":J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 437
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v6, v6, v11

    if-lez v6, :cond_1

    .line 438
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    move-result v5

    .line 439
    .local v5, "success":Z
    const-string v6, "####"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "the tmp dir too old, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v5    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 442
    .local v3, "files":[Ljava/io/File;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 443
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "name":Ljava/lang/String;
    const-string v8, ".tmp"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, v0, v8

    cmp-long v8, v8, v11

    if-lez v8, :cond_3

    .line 445
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    .line 446
    .restart local v5    # "success":Z
    const-string v8, "####"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "the tmp file too old, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v5    # "success":Z
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 447
    :cond_3
    const-string v8, "-tmp"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, v0, v8

    cmp-long v8, v8, v11

    if-lez v8, :cond_2

    .line 448
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    move-result v5

    .line 449
    .restart local v5    # "success":Z
    const-string v8, "####"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "the tmp dir old, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 453
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "success":Z
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 454
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    .line 456
    .restart local v5    # "success":Z
    const-string v6, "####"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "the tmp file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupRootFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getFileRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 428
    .local v0, "backupRootDir":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteTmpFile(Ljava/io/File;)V

    .line 429
    return-void

    .line 404
    .end local v0    # "backupRootDir":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, "dstFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    .line 426
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "backupRootDir":Ljava/io/File;
    goto :goto_0

    .line 410
    .end local v0    # "backupRootDir":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "tmpFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    goto :goto_1

    .line 415
    .end local v2    # "tmpFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 418
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    goto :goto_1

    .line 420
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .restart local v2    # "tmpFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    goto :goto_1
.end method

.method public static fileIsExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableSize()J
    .locals 10

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 366
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 370
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 374
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 378
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    return-wide v6
.end method

.method private static getExportFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "exportFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 349
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "innerFilename":Ljava/lang/String;
    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 352
    :cond_1
    const-string v1, "-tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExportFilePath(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "count"    # I
    .param p5, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getFileRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 262
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 263
    .local v3, "formatter":Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 264
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "backup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "filePath":Ljava/lang/String;
    return-object v2
.end method

.method public static getExportFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 253
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportFilePath(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExportZipInnerFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "exportFile"    # Ljava/io/File;

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExportZipInnerFileName(Ljava/io/File;I)Ljava/lang/String;
    .locals 2
    .param p0, "exportFile"    # Ljava/io/File;
    .param p1, "index"    # I

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getRootPathFromSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 320
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/data/com.lenovo.leos.cloud.sync/backup"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    .local v0, "f":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 327
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 328
    const-string v3, "SDCardBackupUtil"

    const-string v4, " getFileRoot, make root directory failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v1    # "ok":Z
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 334
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "sdcard is readonly!"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 322
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/com.lenovo.leos.cloud.sync/backup"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_0

    .line 336
    :cond_2
    return-object v0
.end method

.method public static getFileRootRetry(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getFileRoot(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 294
    .local v2, "rootPathFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 286
    .end local v2    # "rootPathFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getInternalSDDirectory()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "inner":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v2    # "rootPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFileRootWithNoException(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getFileRoot(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 279
    .local v1, "rootPathFile":Ljava/io/File;
    :goto_0
    return-object v1

    .line 275
    .end local v1    # "rootPathFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/data/com.lenovo.leos.cloud.sync/backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "rootPathFile":Ljava/io/File;
    goto :goto_0
.end method

.method public static getRootPathFromSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 298
    if-eqz p0, :cond_0

    .line 299
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 301
    const-string v1, "is_location_external"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    .local v0, "externalStorageDirectory":Z
    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getExternalSDDirectory()Ljava/lang/String;

    move-result-object v1

    .line 311
    .end local v0    # "externalStorageDirectory":Z
    :cond_0
    :goto_0
    return-object v1

    .line 305
    .restart local v0    # "externalStorageDirectory":Z
    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getInternalSDDirectory()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 308
    .end local v0    # "externalStorageDirectory":Z
    :cond_2
    const-string v2, "sdcard_backup_location"

    invoke-static {p0, v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static readDataFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 216
    const/4 v3, 0x0

    .line 218
    .local v3, "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    const-string v4, ".zip"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    .end local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    :goto_0
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->readMetaInfo()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "jsonContent":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "elements":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-ne v4, v5, :cond_1

    .line 227
    new-array v1, v5, [Ljava/lang/String;

    .line 228
    .local v1, "infos":[Ljava/lang/String;
    aget-object v4, v0, v8

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v1, v7

    .line 229
    aget-object v4, v0, v6

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v1, v6

    .line 230
    aget-object v4, v0, v7

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v1, v8

    .line 233
    .end local v1    # "infos":[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 221
    .end local v0    # "elements":[Ljava/lang/String;
    .end local v2    # "jsonContent":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    .end local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;-><init>(Ljava/lang/String;)V

    .restart local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    goto :goto_0

    .line 233
    .restart local v0    # "elements":[Ljava/lang/String;
    .restart local v2    # "jsonContent":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static readDataToJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;-><init>(Ljava/lang/String;)V

    .line 239
    .local v3, "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->readMetaInfo()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "jsonContent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 242
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "json":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .restart local v1    # "json":Lorg/json/JSONObject;
    return-object v1

    .line 243
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "SDCardBackupUtil"

    const-string v5, "Unexcepted JSONException occurs!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static scanAllBackupRecords(Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 12
    .param p0, "filter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;-><init>()V

    .line 136
    .local v2, "fstabReader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorages()Ljava/util/List;

    move-result-object v7

    .line 139
    .local v7, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 154
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    new-instance v8, Ljava/io/FileNotFoundException;

    const-string v9, "import file is null"

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 139
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 140
    .local v6, "si":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    new-instance v5, Ljava/io/File;

    iget-object v8, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v5, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/com.lenovo.leos.cloud.sync/backup"

    invoke-direct {v0, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "list":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v8, v3

    if-lez v8, :cond_0

    .line 147
    array-length v10, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v4, v3, v8

    .line 148
    .local v4, "name":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "list":[Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "root":Ljava/io/File;
    .end local v6    # "si":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    :cond_2
    return-object v1
.end method

.method public static scanAndGetImportFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "modeName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getFileRootWithNoException(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, "backupDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "import file is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_1
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$1;

    invoke-direct {v2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    .line 75
    :cond_2
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "import file is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getFileRootWithNoException(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static scanAndGetImportFile(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$2;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$2;-><init>()V

    .line 121
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->scanAllBackupRecords(Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;

    invoke-direct {v3, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;-><init>(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method
