.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;
.source "BackupCheckResult.java"


# static fields
.field private static final KEYS:[Ljava/lang/String;

.field private static final KEYS_STATUS:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;


# instance fields
.field private appstatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "not_exist"

    aput-object v1, v0, v2

    const-string v1, "exist"

    aput-object v1, v0, v3

    const-string v1, "backuped"

    aput-object v1, v0, v4

    const-string v1, "new_version"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->KEYS:[Ljava/lang/String;

    .line 12
    new-array v0, v6, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->KEYS_STATUS:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppstatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->appstatus:Ljava/util/List;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;->parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->appstatus:Ljava/util/List;

    .line 29
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->KEYS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_0

    .line 51
    return-object p0

    .line 30
    :cond_0
    sget-object v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->KEYS:[Ljava/lang/String;

    aget-object v5, v7, v3

    .line 31
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 32
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 34
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_2

    .line 29
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "j":I
    :cond_2
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 37
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 38
    .local v1, "backupedJson":Lorg/json/JSONObject;
    const-string v7, "pn"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "name":Ljava/lang/String;
    const-string v7, "dbt"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "dbt":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->appstatus:Ljava/util/List;

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;

    sget-object v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->KEYS_STATUS:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aget-object v9, v9, v3

    invoke-direct {v8, v6, v9, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;-><init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v1    # "backupedJson":Lorg/json/JSONObject;
    .end local v2    # "dbt":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 44
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 45
    .restart local v6    # "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->appstatus:Ljava/util/List;

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;

    sget-object v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->KEYS_STATUS:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aget-object v9, v9, v3

    invoke-direct {v8, v6, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;-><init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public setAppstatus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "appstatus":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->appstatus:Ljava/util/List;

    .line 22
    return-void
.end method
