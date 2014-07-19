.class public Lcom/lenovo/lsf/util/DES;
.super Ljava/lang/Object;
.source "DES.java"


# static fields
.field private static final encryptKey:Ljava/lang/String; = "LenovoID"

.field private static iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lsf/util/DES;->iv:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptDES(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "decryptString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    new-instance v5, Lcom/lenovo/lsf/util/Base64;

    invoke-direct {v5}, Lcom/lenovo/lsf/util/Base64;-><init>()V

    invoke-static {p0}, Lcom/lenovo/lsf/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 20
    .local v0, "byteMi":[B
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/lenovo/lsf/util/DES;->iv:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 21
    .local v4, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "LenovoID"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "DES"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "DES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 23
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 24
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 26
    .local v2, "decryptedData":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    return-object v5
.end method

.method public static encryptDES(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "encryptString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/lenovo/lsf/util/DES;->iv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 11
    .local v3, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "LenovoID"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "DES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "DES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 13
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 16
    .local v1, "encryptedData":[B
    invoke-static {v1}, Lcom/lenovo/lsf/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
