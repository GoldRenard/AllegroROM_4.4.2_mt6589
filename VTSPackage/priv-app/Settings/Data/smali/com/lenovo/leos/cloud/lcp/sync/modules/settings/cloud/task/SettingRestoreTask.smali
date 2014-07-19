.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;
.source "SettingRestoreTask.java"


# static fields
.field public static final PROBLEM_GET_SETTING_CLOUD_BEAN:Ljava/lang/String; = "PROBLEM_GET_SETTING_CLOUD_BEAN"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

.field private restoreSetting:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

.field private service:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->TAG:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private doDownload(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contextLength"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    .line 86
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 87
    .local v0, "httpEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 88
    .local v1, "io":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingFileUtil;->getPackageFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "packageFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 91
    return-object v3
.end method

.method private fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "contextLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/16 v1, 0x800

    .line 100
    .local v1, "bufferSize":I
    :try_start_0
    new-array v0, v1, [B

    .line 101
    .local v0, "buffer":[B
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 102
    .local v4, "size":I
    int-to-long v2, v4

    .line 103
    .local v2, "readCountSize":J
    :goto_1
    if-gtz v4, :cond_2

    .line 109
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    new-array v5, v9, [Ljava/io/Closeable;

    .line 111
    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 104
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p2, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 105
    long-to-float v5, v2

    long-to-float v6, p3

    div-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->notifySubProgress(F)V

    .line 106
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 107
    int-to-long v5, v4

    add-long/2addr v2, v5

    goto :goto_1

    .line 110
    .end local v0    # "buffer":[B
    .end local v2    # "readCountSize":J
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    new-array v6, v9, [Ljava/io/Closeable;

    .line 111
    aput-object p1, v6, v7

    aput-object p2, v6, v8

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 112
    throw v5
.end method

.method private getSettingCloudBean()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->restoreSetting:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "PROBLEM_GET_SETTING_CLOUD_BEAN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->restoreSetting:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->restoreSetting:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cant find SettingCloudBean, can\'t do restore task!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->restoreSetting:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    return-object v0
.end method

.method private getSettingDataById(Ljava/lang/Long;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "dataId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v1/getdata?data_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 118
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppConfigServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "contact.cloud.lps.lenovo.com"

    invoke-direct {v2, v4, v3, v0, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 119
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "responseString":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method private restoreTask(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "dataByIdJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v6, "data_value"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "dataValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "dataValue don\'t null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    :cond_0
    const-string v6, "attachment"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "attachment":Ljava/lang/String;
    const-string v6, "size"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 75
    .local v2, "contextLength":Ljava/lang/Long;
    const/16 v6, 0x67

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    .line 76
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "data":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    .local v0, "allSetting":Lorg/json/JSONObject;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 79
    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->doDownload(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "packageFilePath":Ljava/lang/String;
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-direct {v6, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    .line 82
    .end local v5    # "packageFilePath":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->service:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v6, v0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->putSettingValue(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected notifySubProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    const/high16 v1, 0x40a00000

    .line 138
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->progressStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 155
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->TAG:Ljava/lang/String;

    const-string v1, "notifyStepProgress stepProgress paramter ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 140
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    .line 143
    :sswitch_1
    mul-float v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    .line 146
    :sswitch_2
    const/high16 v0, 0x41200000

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    .line 149
    :sswitch_3
    const/high16 v0, 0x42a00000

    mul-float/2addr v0, p1

    const/high16 v1, 0x41700000

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    .line 152
    :sswitch_4
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
    .end sparse-switch
.end method

.method protected startTask()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    .line 46
    const/16 v0, 0x65

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    .line 47
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->service:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    .line 48
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->getSettingCloudBean()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getDataId()Ljava/lang/Long;

    move-result-object v9

    .line 49
    .local v9, "dataId":Ljava/lang/Long;
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    .line 50
    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->getSettingDataById(Ljava/lang/Long;)Lorg/json/JSONObject;

    move-result-object v11

    .line 51
    .local v11, "resp":Lorg/json/JSONObject;
    invoke-direct {p0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->restoreTask(Lorg/json/JSONObject;)V

    .line 52
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->close()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->removePackageFile()V

    .line 60
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    .line 61
    const-string v1, "LCPSetting"

    const-string v2, "SETTING_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    const-string v7, "1"

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 64
    .end local v9    # "dataId":Ljava/lang/Long;
    .end local v11    # "resp":Lorg/json/JSONObject;
    :goto_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2

    .line 65
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->setProgressStatus(I)V

    .line 67
    :cond_2
    return-void

    .line 53
    :catch_0
    move-exception v10

    .line 54
    .local v10, "e":Lorg/json/JSONException;
    :try_start_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "build json error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->close()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->removePackageFile()V

    .line 60
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    .line 61
    const-string v1, "LCPSetting"

    const-string v2, "SETTING_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    const-string v7, "1"

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0

    .line 55
    .end local v10    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v0

    move-object v12, v0

    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->close()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->removePackageFile()V

    .line 60
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    .line 61
    const-string v1, "LCPSetting"

    const-string v2, "SETTING_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->cost:J

    const-string v7, "1"

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 63
    throw v12
.end method
