.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;
.super Ljava/lang/Object;
.source "AppBackupRequest.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final LOCAL_CATOGARY:Ljava/lang/String; = "local_catogary"

.field public static final LOCAL_NUMBER:Ljava/lang/String; = "local_number"

.field public static final LOCAL_TIME:Ljava/lang/String; = "local_time"


# instance fields
.field requestBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    .line 12
    return-void
.end method

.method private getDataArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 50
    .local v0, "data":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "data":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 52
    .restart local v0    # "data":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;

    .prologue
    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->getDataArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 39
    .local v0, "data":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v2, "item":Lorg/json/JSONObject;
    const-string v3, "package_name"

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v3, "version_code"

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getVersionCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 43
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "item":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    .line 59
    return-void
.end method

.method public putCatogaryToJSONroot(Ljava/lang/String;)V
    .locals 2
    .param p1, "catogary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "local_catogary"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    return-void
.end method

.method public putNumberToJSONroot(I)V
    .locals 2
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "local_number"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    return-void
.end method

.method public putTimeToJSONroot(J)V
    .locals 2
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    const-string v1, "local_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    return-void
.end method

.method public toBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "val":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 32
    :goto_0
    return-object v2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->requestBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
