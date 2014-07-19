.class public Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
.super Ljava/lang/Object;
.source "ProfilesMetaInfo.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private appKey:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field protected storage:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->storage:Lorg/json/JSONObject;

    .line 18
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->appKey:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "appKey"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->appKey:Ljava/lang/String;

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->storage:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexcepted JSONException"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->category:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->storage:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
