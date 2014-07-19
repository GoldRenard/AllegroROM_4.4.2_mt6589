.class public final Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
.super Ljava/lang/Object;
.source "ProfilesFileQueryAPI.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "AppConfFileQueryAPI"

.field private static queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;


# instance fields
.field private context:Landroid/content/Context;

.field private lastError:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->$assertionsDisabled:Z

    .line 26
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lenovoId"    # Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    .line 34
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .line 36
    return-void
.end method

.method private buildProfiles(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .param p1, "resp"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "backupList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;>;"
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 211
    .local v4, "itemData":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 212
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 218
    .end local v2    # "i":I
    :cond_0
    return-object v0

    .line 213
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 214
    .local v3, "item":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->parseProfileInfoForJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v1

    .line 215
    .local v1, "bean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDefaultProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 6
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 65
    sget-boolean v4, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->makeQueryDefaultProfileUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppConfigServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v4, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "responseString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->parseProfileResponse(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 79
    .end local v1    # "responseString":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "AppConfFileQueryAPI"

    const-string v5, "queryAllBackupList JSONException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 79
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "AppConfFileQueryAPI"

    const-string v5, "queryAllBackupList Network error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-class v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    if-nez v1, :cond_0

    .line 109
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 110
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 111
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    .line 113
    .end local v0    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private makeProfileListFromResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "responseString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "responseJson":Lorg/json/JSONObject;
    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 197
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->buildProfiles(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    .line 205
    .end local v1    # "responseJson":Lorg/json/JSONObject;
    .end local v2    # "result":I
    :goto_0
    return-object v3

    .line 199
    .restart local v1    # "responseJson":Lorg/json/JSONObject;
    .restart local v2    # "result":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "responseJson":Lorg/json/JSONObject;
    .end local v2    # "result":I
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "AppConfFileQueryAPI"

    const-string v4, "queryAllBackupList JSONException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private makeProfileQueryUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Long;

    .prologue
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v1/querylist?metadata=true&data_key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "url":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&data_category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_1
    return-object v0
.end method

.method private makeQueryDefaultProfileUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v1/defconfig/get.action?data_key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "url":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&data_category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    return-object v0
.end method

.method private parseProfileInfoForJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 3
    .param p1, "item"    # Lorg/json/JSONObject;

    .prologue
    .line 240
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;-><init>()V

    .line 241
    .local v0, "bean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    const-string v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->setTime(Ljava/lang/String;)V

    .line 242
    const-string v1, "device_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->setDeviceId(Ljava/lang/String;)V

    .line 243
    const-string v1, "device_model"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 244
    const-string v1, "data_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->setDataId(Ljava/lang/Long;)V

    .line 245
    const-string v1, "data_value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->setDataValue(Ljava/lang/String;)V

    .line 246
    const-string v1, "attachment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->setAttachment(Ljava/lang/String;)V

    .line 247
    const-string v1, "size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->setSize(J)V

    .line 248
    return-object v0
.end method

.method private parseProfileResponse(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 4
    .param p1, "responseString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "item":Lorg/json/JSONObject;
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 94
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 95
    const/4 v2, 0x0

    .line 97
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->parseProfileInfoForJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getLastError()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public queryDefaultProfile(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryDefaultProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryDefaultProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->getDefaultProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryLatestProfile(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryLatestProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryLatestProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .locals 4
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 134
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryProfileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "backupList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    .line 138
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryProfileList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryProfileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryProfileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryProfileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-boolean v4, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->makeProfileQueryUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppConfigServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    const-string v6, "contact.cloud.lps.lenovo.com"

    invoke-direct {v2, v4, v3, v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 171
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v4, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "responseString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->makeProfileListFromResponse(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 176
    .end local v1    # "responseString":Ljava/lang/String;
    .end local v2    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :goto_0
    return-object v4

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ioe":Ljava/io/IOException;
    const-string v4, "AppConfFileQueryAPI"

    const-string v5, "queryProfileList IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 176
    const/4 v4, 0x0

    goto :goto_0
.end method
