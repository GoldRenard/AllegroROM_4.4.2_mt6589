.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;
.super Ljava/lang/Object;
.source "PortraitInfo.java"


# instance fields
.field private length:J

.field private path:Ljava/lang/String;

.field private sid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "length"    # J

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;->sid:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;->path:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;->length:J

    .line 17
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "sid"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v1, "path"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "photolength"

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;->length:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    return-object v0
.end method
