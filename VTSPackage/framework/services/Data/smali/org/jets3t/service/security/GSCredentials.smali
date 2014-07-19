.class public Lorg/jets3t/service/security/GSCredentials;
.super Lorg/jets3t/service/security/ProviderCredentials;
.source "GSCredentials.java"


# static fields
.field protected static final GS_TYPE_NAME:Ljava/lang/String; = "gs"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/jets3t/service/security/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/io/BufferedInputStream;)Lorg/jets3t/service/security/ProviderCredentials;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0, p1}, Lorg/jets3t/service/security/ProviderCredentials;->load(Ljava/lang/String;Ljava/io/BufferedInputStream;)Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v0

    .line 84
    .local v0, "credentials":Lorg/jets3t/service/security/ProviderCredentials;
    new-instance v1, Lorg/jets3t/service/security/GSCredentials;

    iget-object v2, v0, Lorg/jets3t/service/security/ProviderCredentials;->accessKey:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jets3t/service/security/ProviderCredentials;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jets3t/service/security/GSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static load(Ljava/lang/String;Ljava/io/File;)Lorg/jets3t/service/security/ProviderCredentials;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0, p1}, Lorg/jets3t/service/security/ProviderCredentials;->load(Ljava/lang/String;Ljava/io/File;)Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v0

    .line 76
    .local v0, "credentials":Lorg/jets3t/service/security/ProviderCredentials;
    new-instance v1, Lorg/jets3t/service/security/GSCredentials;

    iget-object v2, v0, Lorg/jets3t/service/security/ProviderCredentials;->accessKey:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jets3t/service/security/ProviderCredentials;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jets3t/service/security/GSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "gs"

    return-object v0
.end method

.method public getVersionPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "jets3t GS Credentials, version: "

    return-object v0
.end method
