.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;
.super Ljava/lang/Object;
.source "SignatureUtil.java"


# static fields
.field private static mCertFactory:Ljava/security/cert/CertificateFactory;

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static appendKey([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "keyArr"    # [Ljava/lang/String;

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "keys":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 77
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "localKey"    # Ljava/lang/String;
    .param p1, "apkKey"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static findPublicKeyFromCert(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 4
    .param p0, "sign"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v1, ""

    .line 57
    .local v1, "keyStr":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->generateCertificate(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 59
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 61
    .local v2, "publicKey":Ljava/security/PublicKey;
    instance-of v3, v2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 62
    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_0
    instance-of v3, v2, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v3, :cond_1

    .line 66
    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .end local v2    # "publicKey":Ljava/security/PublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_1
    return-object v1
.end method

.method private static findPublicKeyFromCert([Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 4
    .param p0, "signs"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 43
    :cond_0
    const-string v2, ""

    .line 52
    :goto_0
    return-object v2

    .line 46
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 48
    .local v1, "keyArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 52
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->appendKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_2
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->findPublicKeyFromCert(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static findSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0
.end method

.method private static generateCertificate(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;
    .locals 3
    .param p0, "sign"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getCertFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public static getAPKPublicKey(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getSignatures(Landroid/content/Context;Ljava/io/File;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 38
    .local v0, "signs":[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->findPublicKeyFromCert([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAPKPublicKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 31
    .local v0, "signs":[Landroid/content/pm/Signature;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->findPublicKeyFromCert([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCertFactory()Ljava/security/cert/CertificateFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->mCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->mCertFactory:Ljava/security/cert/CertificateFactory;

    .line 87
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->mCertFactory:Ljava/security/cert/CertificateFactory;

    return-object v0
.end method

.method private static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private static getSignatures(Landroid/content/Context;Ljava/io/File;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 130
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->findSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    return-object v1
.end method

.method public static getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    :goto_0
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->findSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v2

    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
