.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;
.super Ljava/lang/Object;
.source "SmsSDcardBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->startSDCardBackupSms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pageCount:I

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

.field private final synthetic val$smsNumber:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->val$smsNumber:Ljava/lang/Integer;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->pageCount:I

    return-void
.end method

.method private writeMetaInfo(I)V
    .locals 4
    .param p1, "total"    # I

    .prologue
    .line 127
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;-><init>()V

    .line 128
    .local v1, "info":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileNameTime:J
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->backupTime:J

    .line 129
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->fileFullPath:Ljava/lang/String;

    .line 130
    iput p1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->dataNumber:I

    .line 131
    const-string v2, "sms"

    iput-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->moduleName:Ljava/lang/String;

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->writeMetaData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SmsSDcardBackupTask"

    const-string v3, "startSDCardBackupSms smsDao.traverseSms writeMetaInfo IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;III)Z
    .locals 10
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .param p2, "cur"    # I
    .param p3, "total"    # I
    .param p4, "offset"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    const/high16 v1, 0x3f800000

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->notifyStepProgress(F)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->addSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;I)V

    .line 106
    if-eqz p2, :cond_0

    :try_start_0
    rem-int/lit8 v0, p2, 0x64

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p3, :cond_3

    .line 108
    :cond_1
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p3, :cond_2

    .line 109
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->writeMetaInfo(I)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->pageCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->pageCount:I

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileNameTime:J
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)J

    move-result-wide v4

    add-int/lit8 v6, p2, 0x1

    if-ne v6, p3, :cond_4

    const/4 v7, 0x1

    :goto_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Ljava/lang/String;

    move-result-object v8

    move v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->writeToFile(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;IJIZLjava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->clearData()V

    .line 114
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->val$smsNumber:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->putNumberToJSONroot(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    return v0

    .line 112
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v9

    .line 117
    .local v9, "e":Ljava/io/IOException;
    const-string v0, "SmsSDcardBackupTask"

    const-string v1, "startSDCardBackupSms smsDao.traverseSms onVisit IOException"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;I)V

    goto :goto_1

    .line 119
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 120
    .local v9, "e":Lorg/json/JSONException;
    const-string v0, "SmsSDcardBackupTask"

    const-string v1, "startSDCardBackupSms smsDao.traverseSms onVisit JSONException"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;I)V

    goto :goto_1

    .line 123
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method
