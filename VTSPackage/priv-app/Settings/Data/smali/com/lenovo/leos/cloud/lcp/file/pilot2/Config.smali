.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private static final HASH_CODE_FACTOR:I = 0x35

.field private static final HASH_CODE_INIT_FACTOR:I = 0x7

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private appId:Ljava/lang/String;

.field private appSpecShape:Ljava/lang/String;

.field private cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private developerKey:Ljava/lang/String;

.field private developerKid:Ljava/lang/String;

.field private iocosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field private workspace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->$assertionsDisabled:Z

    .line 13
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .line 83
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "https://air.lenovows.com"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .line 117
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "https://cos.lenovows.com"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .line 118
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "https://iocos.lenovows.com"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->iocosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .line 120
    const-string v0, "591468687c253d13cddfe2de5fd55159"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKid:Ljava/lang/String;

    .line 121
    const-string v0, "5793cb9eab492b4a71734dfe63226fa0"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKey:Ljava/lang/String;

    .line 122
    const-string v0, "003f21c2521f5401"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appId:Ljava/lang/String;

    .line 123
    const-string v0, "lecloud"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->workspace:Ljava/lang/String;

    .line 124
    const-string v0, "vip"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appSpecShape:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v2, p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .line 102
    .local v0, "o":Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKid:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appId:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->workspace:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->workspace:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appSpecShape:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appSpecShape:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAirURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSpecShape()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appSpecShape:Ljava/lang/String;

    return-object v0
.end method

.method public getCosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-object v0
.end method

.method public getDeveloperKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperKid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKid:Ljava/lang/String;

    return-object v0
.end method

.method public getIocosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->iocosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-object v0
.end method

.method public getWorkspace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->workspace:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 85
    const/4 v0, 0x7

    .line 86
    .local v0, "hash":I
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x173

    .line 87
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 88
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKid:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 89
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v3, v1

    .line 90
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appId:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v3, v1

    .line 91
    mul-int/lit8 v3, v0, 0x35

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->workspace:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->workspace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int v0, v3, v1

    .line 92
    mul-int/lit8 v1, v0, 0x35

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appSpecShape:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appSpecShape:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 93
    return v0

    :cond_1
    move v1, v2

    .line 86
    goto :goto_0

    :cond_2
    move v1, v2

    .line 87
    goto :goto_1

    :cond_3
    move v1, v2

    .line 88
    goto :goto_2

    :cond_4
    move v1, v2

    .line 89
    goto :goto_3

    :cond_5
    move v1, v2

    .line 90
    goto :goto_4

    :cond_6
    move v1, v2

    .line 91
    goto :goto_5
.end method

.method public setAirURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V
    .locals 1
    .param p1, "airURIRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .prologue
    .line 28
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->airURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .line 30
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAppSpecShape(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSpecShape"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->appSpecShape:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V
    .locals 1
    .param p1, "cosURIRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .prologue
    .line 33
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->cosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .line 35
    return-void
.end method

.method public setDeveloperKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "developerKey"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKey:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setDeveloperKid(Ljava/lang/String;)V
    .locals 0
    .param p1, "developerKid"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->developerKid:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setIocosURIRoller(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)V
    .locals 1
    .param p1, "iocosURIRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .prologue
    .line 38
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->iocosURIRoller:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    .line 40
    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .locals 0
    .param p1, "workspace"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->workspace:Ljava/lang/String;

    .line 72
    return-void
.end method
