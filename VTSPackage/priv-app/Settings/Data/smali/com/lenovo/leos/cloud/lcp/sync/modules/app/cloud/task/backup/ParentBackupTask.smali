.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/AbsAppTask;
.source "ParentBackupTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParentBackupTask"


# instance fields
.field protected backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/AbsAppTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-direct {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    .line 50
    return-void
.end method

.method private appLinkExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I
    .locals 9
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 152
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->asJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 154
    :try_start_0
    const-string v7, "applist"

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v1, "v3/applink"

    .line 156
    .local v1, "bckupUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/AppUtil;->getAppURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v6

    .line 157
    .local v6, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 158
    const/4 v8, 0x0

    .line 157
    invoke-virtual {p0, v6, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "respStr":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, "resultJson":Lorg/json/JSONObject;
    const-string v7, "result"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 163
    .end local v1    # "bckupUrl":Ljava/lang/String;
    .end local v4    # "respStr":Ljava/lang/String;
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    .end local v6    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    :goto_0
    return v7

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "ParentBackupTask"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v7, 0x2

    goto :goto_0
.end method

.method private appUploadExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I
    .locals 14
    .param p1, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v13, Ljava/lang/StringBuffer;

    const-string v2, "v3/appupload"

    invoke-direct {v13, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 91
    .local v13, "urlSb":Ljava/lang/StringBuffer;
    const-string v2, "?package_name="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v2, "&version_code="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 93
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/AppUtil;->getAppURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v12

    .line 94
    .local v12, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->buildHeaders(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->headers:Ljava/util/Map;

    .line 95
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->asFile()Ljava/io/File;

    move-result-object v1

    .line 96
    .local v1, "appFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 101
    .local v7, "charset":Ljava/nio/charset/Charset;
    new-instance v9, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v2, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 102
    const/4 v3, 0x0

    .line 101
    invoke-direct {v9, v2, v3, v7}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 104
    .local v9, "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;

    const-string v2, "UTF-8"

    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getSize()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    .line 105
    .local v0, "filePart":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {v0, v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->setListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 106
    const-string v2, "file"

    invoke-virtual {v9, v2, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 108
    :try_start_0
    invoke-virtual {p0, v12, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "respStr":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v11, "resultJson":Lorg/json/JSONObject;
    const-string v2, "result"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 113
    .end local v10    # "respStr":Ljava/lang/String;
    .end local v11    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    return v2

    .line 111
    :catch_0
    move-exception v8

    .line 112
    .local v8, "e":Lorg/json/JSONException;
    const-string v2, "ParentBackupTask"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private buildHeaders(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/util/Map;
    .locals 7
    .param p1, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Upload-Offset"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v4, "Apk-Length"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v4, "Apk-PublicKey"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPKMD5()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v4, "Apk-Dpi"

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->dpi:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 134
    :goto_0
    const-string v4, "Apk-Name"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Apk-Name-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "versionName":Ljava/lang/String;
    const-string v4, "Version-Name"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "0"

    .end local v3    # "versionName":Ljava/lang/String;
    :cond_1
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->headers:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    return v5

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 83
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected singleUploadApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I
    .locals 3
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    if-ne v1, v2, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->appLinkExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I

    move-result v0

    .line 74
    .local v0, "result":I
    :goto_0
    return v0

    .line 72
    .end local v0    # "result":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->appUploadExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public zipAppdata(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/io/File;
    .locals 5
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->backupDataToSD(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u6570\u636e\u62f7\u8d1d\u5230SD\u9519\u8bef\uff01"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "zipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 59
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "zip app data error!"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->setAppDataSize(Ljava/lang/Long;)V

    .line 62
    return-object v0
.end method
