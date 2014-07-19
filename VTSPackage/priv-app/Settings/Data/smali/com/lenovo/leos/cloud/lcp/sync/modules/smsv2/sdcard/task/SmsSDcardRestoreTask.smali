.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;
.source "SmsSDcardRestoreTask.java"


# static fields
.field public static final MAX_OPS_IN_ONE_BATCH:I = 0x32

.field public static final STEP_LOAD_UID2IDDATA:I = 0x64

.field public static final STEP_ONGOING_RESTOREING:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SmsSDcardRestoreTask"


# instance fields
.field private localNumberTotal:I

.field ops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field progressCount:I

.field private reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

.field private smsRestoreCount:I

.field private smsRestoreUpdateCount:I

.field protected smsUid2Id:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    .line 40
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->localNumberTotal:I

    .line 41
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    .line 130
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->progressCount:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 49
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    .line 40
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->localNumberTotal:I

    .line 41
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    .line 130
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->progressCount:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    invoke-direct {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->importSMSFromJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    return-void
.end method

.method private commit(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "toCreateSmsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 175
    sget-object v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->SMS_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 176
    .local v3, "results":[Landroid/content/ContentProviderResult;
    if-eqz v3, :cond_2

    array-length v7, v3

    if-lez v7, :cond_2

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .local v4, "size":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 183
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_2
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 178
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_3
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .line 179
    .local v5, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    aget-object v2, v3, v1

    .line 180
    .local v2, "result":Landroid/content/ContentProviderResult;
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->parseSmsIdFromContentProviderResult(Landroid/content/ContentProviderResult;)I

    move-result v6

    .line 181
    .local v6, "smsId":I
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsUid2Id:Ljava/util/Map;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsUid(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v1    # "i":I
    .end local v2    # "result":Landroid/content/ContentProviderResult;
    .end local v3    # "results":[Landroid/content/ContentProviderResult;
    .end local v4    # "size":I
    .end local v5    # "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .end local v6    # "smsId":I
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "ab"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SmsBatch->applyBatch"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v7, "SmsSDcardRestoreTask"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v7, "ac"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SmsBatch->applyBatch"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v7, "SmsSDcardRestoreTask"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 194
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_4
    const-string v7, "SmsSDcardRestoreTask"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "ac"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SmsBatch->applyBatch"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v7, "SmsSDcardRestoreTask"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 204
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 205
    throw v7
.end method

.method private getPackageReader()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "GET_PACKAGE_PATH"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "packageFilePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    .line 88
    .end local v0    # "packageFilePath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PackageFileReader is null, can\'t read restore files!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    return-object v1
.end method

.method private importSMSFromJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "smsResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getLocalNumber()I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->localNumberTotal:I

    .line 124
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->localNumberTotal:I

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 127
    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->save(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;)V

    .line 128
    return-void
.end method

.method private isCommit(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "toCreateSmsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->commit(Ljava/util/List;)V

    goto :goto_0
.end method

.method private loadSmsUID2IdData()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 219
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsUid2Id:Ljava/util/Map;

    .line 221
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$2;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;)V

    .line 231
    const-string v4, "date"

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v3, v2

    .line 221
    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 232
    return-void
.end method

.method private parseSmsIdFromContentProviderResult(Landroid/content/ContentProviderResult;)I
    .locals 1
    .param p1, "result"    # Landroid/content/ContentProviderResult;

    .prologue
    .line 208
    iget-object v0, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private save(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;)V
    .locals 8
    .param p1, "smsResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 134
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getAllSms()Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "smsAllCloud":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v3, "toCreateSmsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->commit(Ljava/util/List;)V

    .line 160
    return-void

    .line 137
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .line 138
    .local v0, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v4

    .line 142
    :cond_1
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsUid2Id:Ljava/util/Map;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsUid(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 143
    .local v2, "smsId":[Ljava/lang/Integer;
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->progressCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->progressCount:I

    .line 144
    const/high16 v5, 0x3f800000

    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->progressCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->localNumberTotal:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->notifyStepProgress(F)V

    .line 145
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 146
    if-eqz v2, :cond_2

    aget-object v5, v2, v7

    if-nez v5, :cond_4

    .line 147
    :cond_2
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v5, v6, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->buildInsertSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 148
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    .line 156
    :cond_3
    :goto_1
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->isCommit(Ljava/util/List;)V

    goto :goto_0

    .line 150
    :cond_4
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 151
    aget-object v5, v2, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setId(I)V

    .line 152
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->ops:Ljava/util/List;

    invoke-interface {v5, v6, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->buildUpdateSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 153
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    goto :goto_1
.end method

.method private startSDcardRestoreSms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V

    .line 107
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->getPackageReader()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    move-result-object v0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->read(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected addOtherFinishParam(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 212
    const-string v0, "countOfAdd"

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v0, "countOfupadte"

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string v0, "costTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    return-void
.end method

.method protected beforeTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "GET_PACKAGE_PATH"

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 258
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 259
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    return-object v0
.end method

.method protected notifyStepProgress(F)V
    .locals 2
    .param p1, "stepProgress"    # F

    .prologue
    const/high16 v1, 0x41a00000

    .line 238
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    sparse-switch v0, :sswitch_data_0

    .line 252
    const-string v0, "SmsSDcardRestoreTask"

    const-string v1, "SmsSDcardRestoreTask notifyStepProgress, this log shoud not be printed, there must be some unexcepted ERROR."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 240
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 243
    :sswitch_1
    mul-float v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 246
    :sswitch_2
    const/high16 v0, 0x42a00000

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 249
    :sswitch_3
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x7fffffff -> :sswitch_3
    .end sparse-switch
.end method

.method public startTask()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->startTime:J

    .line 60
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V

    .line 61
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->beforeTask()V

    .line 62
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->loadSmsUID2IdData()V

    .line 63
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->startSDcardRestoreSms()V

    .line 64
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsUid2Id:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsUid2Id:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    .line 74
    const-string v1, "LCPSms"

    const-string v2, "SDCARD_SMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 75
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 74
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 77
    return-void

    .line 65
    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 66
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsUid2Id:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsUid2Id:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    .line 74
    const-string v1, "LCPSms"

    const-string v2, "SDCARD_SMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 75
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreCount:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->smsRestoreUpdateCount:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 74
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 76
    throw v9
.end method
