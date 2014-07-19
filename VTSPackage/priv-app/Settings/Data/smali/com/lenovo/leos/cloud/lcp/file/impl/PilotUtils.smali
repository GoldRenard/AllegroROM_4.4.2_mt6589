.class public final Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;
.super Ljava/lang/Object;
.source "PilotUtils.java"


# static fields
.field public static final ERROR_NETWORK:I = -0x1

.field public static final ERROR_NO_ALBUM:I = 0x195

.field public static final ERROR_NO_SPACE:I = 0x193

.field public static final ERROR_PARAMS:I = 0x190

.field public static final ERROR_UNKNOWN:I = 0x1a1

.field private static httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private static lastPhotoServerUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->lastPhotoServerUrls:[Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchServerConfig(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "photoServerUrls":[Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v1

    .line 63
    .local v1, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    const-string v5, "v2/netdisk/config"

    const-string v6, "photo.cloud.lps.lenovo.com"

    invoke-direct {v4, v2, v5, v1, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 64
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    sget-object v5, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v5, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "responseString":Ljava/lang/String;
    sput-object v2, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->lastPhotoServerUrls:[Ljava/lang/String;

    .line 66
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 67
    .end local v1    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .end local v2    # "photoServerUrls":[Ljava/lang/String;
    .end local v3    # "responseString":Ljava/lang/String;
    .end local v4    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public static loadPilotParameter(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->needLoadServerConfig(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->fetchServerConfig(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    .local v0, "serverConfig":Lorg/json/JSONObject;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    const-string v2, "keyid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setDeveloperKid(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setDeveloperKey(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setAppId(Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getNetDiskServer1(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setCosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V

    .line 36
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getNetDiskServer2(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setAirURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V

    .line 37
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getNetDiskServer3(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->setIocosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V

    .line 39
    .end local v0    # "serverConfig":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method private static needLoadServerConfig(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 46
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->lastPhotoServerUrls:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "photoServerUrls":[Ljava/lang/String;
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->lastPhotoServerUrls:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method
