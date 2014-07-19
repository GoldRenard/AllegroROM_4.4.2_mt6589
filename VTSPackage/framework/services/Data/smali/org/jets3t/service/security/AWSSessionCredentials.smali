.class public Lorg/jets3t/service/security/AWSSessionCredentials;
.super Lorg/jets3t/service/security/AWSCredentials;
.source "AWSSessionCredentials.java"


# instance fields
.field protected sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jets3t/service/security/AWSSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "awsAccessKey"    # Ljava/lang/String;
    .param p2, "awsSecretAccessKey"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p4}, Lorg/jets3t/service/security/AWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/security/AWSSessionCredentials;->sessionToken:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/jets3t/service/security/AWSSessionCredentials;->sessionToken:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jets3t/service/security/AWSSessionCredentials;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method protected getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "session"

    return-object v0
.end method
