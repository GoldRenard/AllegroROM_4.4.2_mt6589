.class public Lorg/jets3t/service/multithread/DownloadPackage;
.super Lorg/jets3t/service/multi/DownloadPackage;
.source "DownloadPackage.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private signedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V
    .locals 1
    .param p1, "signedUrl"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "isUnzipping"    # Z
    .param p4, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 41
    iput-object v0, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;ZLorg/jets3t/service/security/EncryptionUtil;)V
    .locals 1
    .param p1, "signedUrl"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "isUnzipping"    # Z
    .param p4, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/OutputStream;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 41
    iput-object v0, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/S3Object;Ljava/io/File;)V
    .locals 2
    .param p1, "object"    # Lorg/jets3t/service/model/S3Object;
    .param p2, "outputFile"    # Ljava/io/File;

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jets3t/service/multithread/DownloadPackage;-><init>(Lorg/jets3t/service/model/S3Object;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/S3Object;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V
    .locals 1
    .param p1, "object"    # Lorg/jets3t/service/model/S3Object;
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "isUnzipping"    # Z
    .param p4, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/S3Object;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "object"    # Lorg/jets3t/service/model/S3Object;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jets3t/service/multithread/DownloadPackage;-><init>(Lorg/jets3t/service/model/S3Object;Ljava/io/OutputStream;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/S3Object;Ljava/io/OutputStream;ZLorg/jets3t/service/security/EncryptionUtil;)V
    .locals 1
    .param p1, "object"    # Lorg/jets3t/service/model/S3Object;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "isUnzipping"    # Z
    .param p4, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/OutputStream;ZLorg/jets3t/service/security/EncryptionUtil;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getObject()Lorg/jets3t/service/model/S3Object;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lorg/jets3t/service/multi/DownloadPackage;->getObject()Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method

.method public bridge synthetic getObject()Lorg/jets3t/service/model/StorageObject;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/DownloadPackage;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public getSignedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSignedDownload()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSignedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/jets3t/service/multithread/DownloadPackage;->signedUrl:Ljava/lang/String;

    .line 83
    return-void
.end method
