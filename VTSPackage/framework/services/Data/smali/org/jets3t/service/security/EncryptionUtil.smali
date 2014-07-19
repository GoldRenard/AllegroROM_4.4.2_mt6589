.class public Lorg/jets3t/service/security/EncryptionUtil;
.super Ljava/lang/Object;
.source "EncryptionUtil.java"


# static fields
.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "PBEWithMD5AndDES"

.field public static final DEFAULT_VERSION:Ljava/lang/String; = "2"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field ITERATION_COUNT:I

.field private algParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private algorithm:Ljava/lang/String;

.field private key:Ljavax/crypto/SecretKey;

.field salt:[B

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 73
    const-class v3, Lorg/jets3t/service/security/EncryptionUtil;

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    sput-object v3, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    .line 91
    :try_start_0
    const-string v3, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, "bouncyCastleProviderClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 94
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 96
    .local v0, "bouncyCastleProvider":Ljava/security/Provider;
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 98
    .end local v0    # "bouncyCastleProvider":Ljava/security/Provider;
    :cond_0
    sget-object v3, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    sget-object v3, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Loaded security provider BouncyCastleProvider"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 103
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    sget-object v3, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to load security provider BouncyCastleProvider"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "encryptionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 162
    const-string v0, "PBEWithMD5AndDES"

    const-string v1, "2"

    invoke-direct {p0, p1, v0, v1}, Lorg/jets3t/service/security/EncryptionUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "encryptionKey"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->algorithm:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->version:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->key:Ljavax/crypto/SecretKey;

    .line 81
    iput-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->algParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 83
    const/16 v2, 0x1388

    iput v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->ITERATION_COUNT:I

    .line 84
    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->salt:[B

    .line 131
    iput-object p2, p0, Lorg/jets3t/service/security/EncryptionUtil;->algorithm:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lorg/jets3t/service/security/EncryptionUtil;->version:Ljava/lang/String;

    .line 133
    sget-object v2, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    sget-object v2, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cryptographic properties: algorithm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/security/EncryptionUtil;->algorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/security/EncryptionUtil;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 137
    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognised crypto version setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_1
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/security/EncryptionUtil;->salt:[B

    iget v4, p0, Lorg/jets3t/service/security/EncryptionUtil;->ITERATION_COUNT:I

    const/16 v5, 0x20

    invoke-direct {v0, v2, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 142
    .local v0, "keyspec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 143
    .local v1, "skf":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->key:Ljavax/crypto/SecretKey;

    .line 144
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v3, p0, Lorg/jets3t/service/security/EncryptionUtil;->salt:[B

    iget v4, p0, Lorg/jets3t/service/security/EncryptionUtil;->ITERATION_COUNT:I

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->algParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 145
    return-void

    .line 84
    nop

    :array_0
    .array-data 1
        -0x5ct
        0xbt
        -0x38t
        0x34t
        -0x2at
        -0x6bt
        -0xdt
        0x13t
    .end array-data
.end method

.method public static convertRsaPemToDer(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Lorg/jets3t/service/utils/ServiceUtils;->readInputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "pemData":Ljava/lang/String;
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 552
    .local v2, "headerEndOffset":I
    const-string v5, "-----END"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 553
    .local v1, "footerStartOffset":I
    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "strippedPemData":Ljava/lang/String;
    invoke-static {v4}, Lorg/jets3t/service/utils/ServiceUtils;->fromBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 557
    .local v0, "derBytes":[B
    return-object v0
.end method

.method public static isCipherAvailableForUse(Ljava/lang/String;)Z
    .locals 5
    .param p0, "cipher"    # Ljava/lang/String;

    .prologue
    .line 461
    :try_start_0
    new-instance v1, Lorg/jets3t/service/security/EncryptionUtil;

    const-string v2, "Sample Key"

    const-string v3, "2"

    invoke-direct {v1, v2, p0, v3}, Lorg/jets3t/service/security/EncryptionUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .local v1, "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    const-string v2, "Testing encryption..."

    invoke-virtual {v1, v2}, Lorg/jets3t/service/security/EncryptionUtil;->encrypt(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 472
    const/4 v2, 0x1

    .end local v1    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    :goto_0
    return v2

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 466
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    sget-object v2, Lorg/jets3t/service/security/EncryptionUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Availability test failed for encryption cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 470
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static listAvailablePbeCiphers(Z)[Ljava/lang/String;
    .locals 6
    .param p0, "testAvailability"    # Z

    .prologue
    .line 488
    const-string v4, "Cipher"

    invoke-static {v4}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 489
    .local v1, "ciphers":Ljava/util/Set;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 490
    .local v3, "pbeCiphers":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    .local v0, "cipher":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pbe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    if-eqz p0, :cond_1

    invoke-static {v0}, Lorg/jets3t/service/security/EncryptionUtil;->isCipherAvailableForUse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    .end local v0    # "cipher":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static listAvailableProviders()[Ljava/security/Provider;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {}, Lorg/jets3t/service/security/EncryptionUtil;->listAvailableProviders()[Ljava/security/Provider;

    move-result-object v2

    .line 562
    .local v2, "providers":[Ljava/security/Provider;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Providers:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 564
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/jets3t/service/security/EncryptionUtil;->listAvailablePbeCiphers(Z)[Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "ciphers":[Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "PBE Ciphers available (untested):"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 570
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_1
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/jets3t/service/security/EncryptionUtil;->listAvailablePbeCiphers(Z)[Ljava/lang/String;

    move-result-object v0

    .line 574
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "PBE Ciphers available (tested):"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 575
    const/4 v1, 0x0

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 576
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 578
    :cond_2
    return-void
.end method

.method public static signWithRsaSha1([B[B)[B
    .locals 7
    .param p0, "derPrivateKeyBytes"    # [B
    .param p1, "dataToSign"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 525
    .local v1, "privSpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 526
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    .line 529
    .local v2, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    const-string v5, "SHA1withRSA"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 530
    .local v3, "signature":Ljava/security/Signature;
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2, v5}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 531
    invoke-virtual {v3, p1}, Ljava/security/Signature;->update([B)V

    .line 533
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    .line 534
    .local v4, "signatureBytes":[B
    return-object v4
.end method


# virtual methods
.method public decrypt(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initDecryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 368
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public decrypt(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initDecryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 404
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public decrypt([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initDecryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 308
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public decrypt([BII)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initDecryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 332
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public decryptString([B)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initEncryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 230
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    sget-object v3, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public decryptString([BII)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initDecryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 260
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    sget-object v3, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public encrypt(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initEncryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 350
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public encrypt(Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initEncryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 386
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initEncryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 205
    .local v0, "cipher":Ljavax/crypto/Cipher;
    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public encrypt([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initEncryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 284
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/jets3t/service/security/EncryptionUtil;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedOutputSize(J)J
    .locals 6
    .param p1, "inputSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/jets3t/service/security/EncryptionUtil;->initEncryptModeCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 429
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const-wide/16 v2, 0x0

    .line 433
    .local v2, "outputSize":J
    const v1, 0x7fffdfff

    .line 434
    .local v1, "maxChunk":I
    :goto_0
    int-to-long v4, v1

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    .line 435
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 436
    int-to-long v4, v1

    sub-long/2addr p1, v4

    goto :goto_0

    .line 438
    :cond_0
    long-to-int v4, p1

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 439
    return-wide v2
.end method

.method protected initDecryptModeCipher()Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lorg/jets3t/service/security/EncryptionUtil;->algorithm:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 177
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->key:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lorg/jets3t/service/security/EncryptionUtil;->algParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 178
    return-object v0
.end method

.method protected initEncryptModeCipher()Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v1, p0, Lorg/jets3t/service/security/EncryptionUtil;->algorithm:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 169
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/jets3t/service/security/EncryptionUtil;->key:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lorg/jets3t/service/security/EncryptionUtil;->algParamSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 170
    return-object v0
.end method
