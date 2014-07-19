.class final Lcom/lenovo/lsf/account/MD5PasswordEncoder;
.super Ljava/lang/Object;
.source "MD5PasswordEncoder.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static instance:Lcom/lenovo/lsf/account/MD5PasswordEncoder;


# instance fields
.field private final encodingAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "MD5"

    iput-object v0, p0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->encodingAlgorithm:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodingAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->encodingAlgorithm:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private getFormattedText([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 63
    sget-object v2, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->HEX_DIGITS:[C

    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    sget-object v2, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->HEX_DIGITS:[C

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static instance()Lcom/lenovo/lsf/account/MD5PasswordEncoder;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->instance:Lcom/lenovo/lsf/account/MD5PasswordEncoder;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;

    invoke-direct {v0}, Lcom/lenovo/lsf/account/MD5PasswordEncoder;-><init>()V

    sput-object v0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->instance:Lcom/lenovo/lsf/account/MD5PasswordEncoder;

    .line 22
    :cond_0
    sget-object v0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->instance:Lcom/lenovo/lsf/account/MD5PasswordEncoder;

    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    const/4 v3, 0x0

    .line 49
    :goto_0
    return-object v3

    .line 35
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->encodingAlgorithm:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 40
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 45
    .local v0, "digest":[B
    invoke-direct {p0, v0}, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->getFormattedText([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 46
    .local v3, "rs":Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v0    # "digest":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    .end local v3    # "rs":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    const-string v3, ""

    goto :goto_0
.end method
