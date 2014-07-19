.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "ContactChecksumRequest.java"


# instance fields
.field requestBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->setDeviceId(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "isMerge"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    .line 37
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->setDeviceId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->setMergeFlag(Z)V

    .line 39
    return-void
.end method

.method private getContactArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 125
    .local v0, "contacts":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "contacts":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 127
    .restart local v0    # "contacts":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "ct"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_0
    return-object v0
.end method

.method private getGroupArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "cg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 108
    .local v0, "groups":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "groups":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 110
    .restart local v0    # "groups":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "cg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_0
    return-object v0
.end method

.method private getPortraitArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "pt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 155
    .local v0, "portraits":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "portraits":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 157
    .restart local v0    # "portraits":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "pt"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_0
    return-object v0
.end method

.method private initContactArray()V
    .locals 1

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->getContactArray()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initGroupArray()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->getGroupArray()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initPortaitArray()V
    .locals 1

    .prologue
    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->getPortraitArray()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newContactChecksumRequest(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    .locals 2
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;-><init>(Ljava/lang/String;Z)V

    .line 22
    .local v0, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->initContactArray()V

    .line 23
    return-object v0
.end method

.method public static newGroupChecksumRequest(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->initGroupArray()Lorg/json/JSONArray;

    .line 17
    return-object v0
.end method

.method public static newPortraitChecksumRequest(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->initPortaitArray()V

    .line 29
    return-object v0
.end method

.method private setDeviceId(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addContact(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "alger"    # Ljava/lang/String;
    .param p4, "crc"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->getContactArray()Lorg/json/JSONArray;

    move-result-object v1

    .line 80
    .local v1, "contacts":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v0, "c":Lorg/json/JSONObject;
    const-string v3, "cid"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    const-string v3, "sid"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    :cond_0
    const-string v3, "crc"

    invoke-virtual {v0, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v3, "adler"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "c":Lorg/json/JSONObject;
    .end local v1    # "contacts":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addGroup(ILjava/lang/String;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->addGroup(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public addGroup(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cid"    # I
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->getGroupArray()Lorg/json/JSONArray;

    move-result-object v2

    .line 60
    .local v2, "groups":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v1, "g":Lorg/json/JSONObject;
    const-string v5, "cid"

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 64
    .local v3, "serverId":J
    const-string v5, "sid"

    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    .end local v3    # "serverId":J
    :cond_0
    const-string v5, "n"

    invoke-virtual {v1, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "g":Lorg/json/JSONObject;
    .end local v2    # "groups":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addPortrait(Ljava/lang/String;I)V
    .locals 6
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 134
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 135
    .local v3, "serverId":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->getPortraitArray()Lorg/json/JSONArray;

    move-result-object v2

    .line 136
    .local v2, "portraits":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v1, "p":Lorg/json/JSONObject;
    const-string v5, "sid"

    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 138
    const-string v5, "len"

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "p":Lorg/json/JSONObject;
    .end local v2    # "portraits":Lorg/json/JSONArray;
    .end local v3    # "serverId":J
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMergeFlag(Z)V
    .locals 3
    .param p1, "isMerge"    # Z

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    const-string v2, "mc"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->requestBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
