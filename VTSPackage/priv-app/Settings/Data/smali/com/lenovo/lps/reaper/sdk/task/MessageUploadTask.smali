.class public final Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;
.super Ljava/lang/Object;
.source "MessageUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MESSAGE_URL:Ljava/lang/String; = "%s?dowload=%s"

.field private static final MESSAGE_URL_PRE:Ljava/lang/String; = "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001"

.field private static final TAG:Ljava/lang/String; = "MessageUploadTask"


# instance fields
.field private downloadMessage:Z

.field private localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;Z)V
    .locals 2
    .param p1, "localConfig"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    .param p2, "downloadMessage"    # Z

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 52
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 53
    iput-boolean p2, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->downloadMessage:Z

    .line 54
    return-void
.end method

.method private check()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getMessageUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 126
    const-string v1, "MessageUploadTask"

    const-string v2, "server url is null."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string v1, "MessageUploadTask"

    const-string v2, "network is not ok."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->hasUploadMsg()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->downloadMessage:Z

    if-nez v1, :cond_2

    .line 134
    const-string v1, "MessageUploadTask"

    const-string v2, "network is not ok."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processResponseResult(Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, "jsonResult":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 150
    .local v5, "length":I
    const-string v4, ""

    .line 151
    .local v4, "key":Ljava/lang/String;
    const-string v7, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .local v7, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 154
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 155
    .local v6, "obj":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 156
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 159
    :cond_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->parseDownloadMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "obj":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "MessageUploadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get Message Wrong. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v3    # "jsonResult":Lorg/json/JSONArray;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "MessageUploadTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "process response fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->check()Z

    move-result v17

    if-nez v17, :cond_0

    .line 117
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v17, "MessageUploadTask"

    const-string v18, "add message task."

    invoke-static/range {v17 .. v18}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v17, "MessageUploadTask"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getMessageUrl()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 65
    .local v8, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 66
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 67
    .local v6, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v17, "http.connection.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 69
    const-string v17, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 71
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 72
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v17, "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001"

    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;->Message:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceIdType()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getChannel()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getOsVersion()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getLanguage()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCountry()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceModel()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getManufacture()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getResolution()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "dataPrefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v3, "data":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getUploadMsgList()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v15

    .line 80
    .local v15, "uploadMsgs":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;>;"
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 81
    .local v16, "uploadedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;>;"
    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v17

    if-nez v17, :cond_2

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    new-instance v17, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;

    invoke-direct/range {v17 .. v17}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;->toEmptyString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_1
    new-instance v17, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 96
    const-string v17, "%s?dowload=%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getMessageUrl()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->downloadMessage:Z

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 97
    const-string v17, "Host"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getReaperServerhost()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7, v6}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 99
    invoke-virtual {v8, v7}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 100
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 101
    .local v2, "code":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v2, v0, :cond_4

    .line 102
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;->processResponseResult(Ljava/lang/String;)V

    .line 106
    const-string v17, "MessageUploadTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Message Update Success: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->addTimeInternal()V

    .line 108
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->clearUploadedMsg(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v13    # "result":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 85
    .end local v2    # "code":I
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    const/4 v10, 0x0

    .line 86
    .local v10, "index":I
    :try_start_1
    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    move v11, v10

    .end local v10    # "index":I
    .local v11, "index":I
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;

    .line 87
    .local v14, "uploadMsg":Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    if-lez v11, :cond_3

    .line 88
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_2

    .line 110
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "index":I
    .end local v14    # "uploadMsg":Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;
    .restart local v2    # "code":I
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    const-string v17, "MessageUploadTask"

    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x40

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v19, "Get message fail, status code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 112
    .end local v2    # "code":I
    .end local v3    # "data":Ljava/lang/StringBuilder;
    .end local v4    # "dataPrefix":Ljava/lang/String;
    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "uploadMsgs":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;>;"
    .end local v16    # "uploadedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;>;"
    :catch_0
    move-exception v5

    .line 113
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v17, "MessageUploadTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Get Message fail. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v8}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    invoke-virtual {v8}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v17
.end method
