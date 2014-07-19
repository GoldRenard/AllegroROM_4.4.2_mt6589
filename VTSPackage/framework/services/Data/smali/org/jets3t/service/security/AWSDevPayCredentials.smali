.class public Lorg/jets3t/service/security/AWSDevPayCredentials;
.super Lorg/jets3t/service/security/AWSCredentials;
.source "AWSDevPayCredentials.java"


# static fields
.field private static final serialVersionUID:J = -0x7c82038968749c11L


# instance fields
.field private awsProductToken:Ljava/lang/String;

.field private awsUserToken:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsUserToken:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsProductToken:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;
    .param p3, "friendlyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsUserToken:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsProductToken:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;
    .param p3, "awsUserToken"    # Ljava/lang/String;
    .param p4, "awsProductToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsUserToken:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsProductToken:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsUserToken:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsProductToken:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;
    .param p3, "awsUserToken"    # Ljava/lang/String;
    .param p4, "awsProductToken"    # Ljava/lang/String;
    .param p5, "friendlyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p5}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsUserToken:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsProductToken:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsUserToken:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsProductToken:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method protected getDataToEncrypt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getProductToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/jets3t/service/security/ProviderCredentials;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/security/AWSDevPayCredentials;->getProductToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsProductToken:Ljava/lang/String;

    return-object v0
.end method

.method protected getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "devpay"

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jets3t/service/security/AWSDevPayCredentials;->awsUserToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "jets3t AWS Credentials, version: "

    return-object v0
.end method
