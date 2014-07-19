.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;
.source "CloudAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CloudAppInfo"


# instance fields
.field private appname:Ljava/lang/String;

.field private dataurl:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

.field private versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->appname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->dataurl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;-><init>()V

    .line 195
    .local v0, "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    const-string v1, "pn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->packageName:Ljava/lang/String;

    .line 196
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->iconUrl:Ljava/lang/String;

    .line 197
    const-string v1, "an"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "an"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->appname:Ljava/lang/String;

    .line 198
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    .line 200
    const-string v1, "dataurl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "dataurl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->dataurl:Ljava/lang/String;

    .line 201
    const-string v1, "datasize"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "datasize"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appDataSize:Ljava/lang/Long;

    .line 202
    return-object v0

    .line 195
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 196
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 197
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 200
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 201
    :cond_4
    const-wide/16 v1, 0x0

    goto :goto_4
.end method

.method private parseToMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 226
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ByteArrayUtil;->base16([B)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public asJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v0, "bean":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "package_name"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v2, "version_code"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v2, "version_name"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v2, "checksum"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getChecksum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getMd5()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDataurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->dataurl:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    .locals 11

    .prologue
    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, "thenew":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 118
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->toVersionNumber(Ljava/lang/String;)J

    move-result-wide v3

    .line 119
    .local v3, "max":J
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getTime()J

    move-result-wide v6

    .line 120
    .local v6, "time":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_2

    .line 141
    .end local v2    # "i":I
    .end local v3    # "max":J
    .end local v6    # "time":J
    :cond_0
    if-nez v5, :cond_1

    .line 142
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    .line 144
    :cond_1
    return-object v5

    .line 121
    .restart local v2    # "i":I
    .restart local v3    # "max":J
    .restart local v6    # "time":J
    :cond_2
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    .line 122
    .local v8, "v":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->toVersionNumber(Ljava/lang/String;)J

    move-result-wide v0

    .line 125
    .local v0, "code":J
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getMatch()I

    move-result v9

    if-eqz v9, :cond_4

    .line 120
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_4
    cmp-long v9, v3, v0

    if-gez v9, :cond_5

    .line 130
    move-object v5, v8

    .line 131
    move-wide v3, v0

    .line 132
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getTime()J

    move-result-wide v6

    .line 133
    goto :goto_1

    :cond_5
    cmp-long v9, v3, v0

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getTime()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-gez v9, :cond_3

    .line 134
    move-object v5, v8

    .line 135
    move-wide v3, v0

    .line 136
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getTime()J

    move-result-wide v6

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getPKMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getAPKPublicKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "pk":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->parseToMD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 212
    .end local v1    # "pk":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getSize()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getVersionCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    return-object v0
.end method

.method public loadIcon(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "image"    # Landroid/widget/ImageView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    const-string v0, "CloudAppInfo"

    const-string v1, "loadIcon deprecated,use NewIconCache.asyncLoad()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public setDataurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataurl"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->dataurl:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->appname:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVersion(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;)V
    .locals 0
    .param p1, "version"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->dataurl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appDataSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    move-result-object v0

    .line 71
    .local v0, "appStatus":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->version:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 74
    return-void

    .line 71
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
