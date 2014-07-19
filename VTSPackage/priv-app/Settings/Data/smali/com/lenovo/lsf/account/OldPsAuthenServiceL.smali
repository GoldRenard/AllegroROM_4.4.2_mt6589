.class Lcom/lenovo/lsf/account/OldPsAuthenServiceL;
.super Ljava/lang/Object;
.source "OldPsAuthenServiceL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;,
        Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;,
        Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_EMAIL:Ljava/lang/String; = "email"

.field public static final ACCOUNT_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final LENOVOUSER_OFFLINE:I = 0x1

.field public static final LENOVOUSER_ONLINE:I = 0x2

.field private static final MSG_LOGIN_ERROR:I = 0x3

.field private static final MSG_STARTLOGIN:I = 0x2

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RK_PUSHSDK"

.field private static isHandleErrorBySelf:Z

.field static isNoUi:Z

.field private static isPasswordSet:Z

.field private static isTimeout:Z

.field private static mErrorCode:Ljava/lang/String;

.field private static mErrorString:Ljava/lang/String;

.field private static oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

.field private static receiver:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;

.field private static sbSign:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    sput-object v1, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    .line 60
    sput-boolean v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isTimeout:Z

    .line 61
    sput-boolean v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isPasswordSet:Z

    .line 62
    sput-boolean v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isHandleErrorBySelf:Z

    .line 63
    sput-boolean v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isNoUi:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    .line 70
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "b4ff3646c0993ca9,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "e4f148e188d80813,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "e1d5ad8632c59795,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "5b4ffe7e09263c1b,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "451a38f5aaa9849d,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "27c691d026db1115,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "f262f444404ea056,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "15b9a5bd4cf140de,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "85a100f00ba73577,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "e4896c7347b5ba53,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "ebc7d883a5f3b396,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "f8ea99ebb3b3602f,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    const-string v1, "29ccd8ca635b052f,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    return-void
.end method

.method private static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    .line 650
    const/4 v3, 0x0

    .line 652
    .local v3, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 656
    :goto_0
    if-nez v3, :cond_0

    .line 657
    const/4 v5, 0x0

    .line 667
    :goto_1
    return-object v5

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "Upgrade"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 660
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 661
    .local v1, "encodedPassword":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 663
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v7, :cond_1

    .line 664
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_1
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 667
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    sput-object p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->setErrorString(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->startOneKeyLoginProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    return-void
.end method

.method static synthetic access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .prologue
    .line 33
    sput-object p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->registSMSReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sendErrorMsg(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isTimeout:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isTimeout:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isPasswordSet:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isPasswordSet:Z

    return p0
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->unRegistSMSReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->finishLogin(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isHandleErrorBySelf:Z

    return v0
.end method

.method private static finishLogin(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V
    .locals 4
    .param p0, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .param p1, "ret"    # Z
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HHHHHHHHHHHH finishLogin mCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-eqz p0, :cond_0

    .line 600
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    const/4 p0, 0x0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HHHHHHHHHHHH finishLogin e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public static getMD5AuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "random"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 120
    :try_start_0
    const-string v4, "LenovoUser"

    const-string v5, "UserName"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 123
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v4, "LenovoUser"

    const-string v5, "Password"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "passwd":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->instance()Lcom/lenovo/lsf/account/MD5PasswordEncoder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/lsf/account/MD5PasswordEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 125
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "passwd":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getOnkeyLoginTimes(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyLoginTimesKeyInOneDay()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getPublicKey([B)Ljava/lang/String;
    .locals 9
    .param p0, "signature"    # [B

    .prologue
    .line 628
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 629
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 630
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, "publickey":Ljava/lang/String;
    const-string v6, "modulus: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 632
    .local v4, "index":I
    if-lez v4, :cond_1

    .line 633
    add-int/lit8 v6, v4, 0x9

    const-string v7, "\n"

    const-string v8, "modulus:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 642
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "index":I
    .end local v5    # "publickey":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 635
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "index":I
    .restart local v5    # "publickey":Ljava/lang/String;
    :cond_1
    const-string v6, "modulus="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 636
    const-string v6, ","

    const-string v7, "modulus="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 637
    .local v3, "end":I
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPublicKey publickey end ==== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    add-int/lit8 v6, v4, 0x8

    const-string v7, ","

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 643
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "end":I
    .end local v4    # "index":I
    .end local v5    # "publickey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v6, "Upgrade"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 139
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 141
    if-nez p2, :cond_0

    .line 142
    invoke-static {p0, p1}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "st":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    .line 148
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->setErrorString(Landroid/content/Context;)V

    .line 149
    const/4 v0, 0x0

    .line 153
    .end local v0    # "st":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 144
    :cond_0
    invoke-static {p0, p1}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->newStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "st":Ljava/lang/String;
    goto :goto_0

    .line 151
    :cond_1
    const-string v1, ""

    sput-object v1, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    .line 152
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->setErrorString(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Z)V

    .line 166
    return-void
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .param p3, "flag"    # Z

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLandroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .param p3, "flag"    # Z
    .param p4, "loginOption"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 191
    move-object v1, p0

    .line 192
    .local v1, "fcontext":Landroid/content/Context;
    move-object v2, p1

    .line 193
    .local v2, "frid":Ljava/lang/String;
    move-object v0, p2

    .line 195
    .local v0, "fcallback":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    const-string v4, "LenovoUser"

    const-string v5, "IsLogon"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "isLogon":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 197
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->showLoginRegisterDialog(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Landroid/os/Bundle;)V

    .line 216
    :goto_0
    return-void

    .line 199
    :cond_1
    new-instance v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;

    invoke-direct {v4, v1, v2, v0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getStatus(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 96
    const-string v1, "LenovoUser"

    const-string v2, "IsLogon"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "isLogon":Ljava/lang/String;
    const-string v1, "RK_PUSHSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLogon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    const/4 v1, 0x1

    .line 101
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const-string v0, "LenovoUser"

    const-string v1, "AccountType"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-string v0, "LenovoUser"

    const-string v1, "Userid"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 111
    const-string v0, "LenovoUser"

    const-string v1, "UserName"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasPermission(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 613
    const/4 v1, 0x0

    .line 615
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 616
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getPublicKey([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 620
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sbSign:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 621
    const/4 v3, 0x1

    .line 623
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static registSMSReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    new-instance v1, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->receiver:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;

    .line 432
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->receiver:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    return-void
.end method

.method private static sendErrorMsg(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "myHandler"    # Landroid/os/Handler;
    .param p1, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .param p2, "rid"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 514
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 515
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 516
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "error"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v2, "rid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 519
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 520
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 521
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 523
    return-void
.end method

.method private static setErrorString(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 268
    const/4 v3, 0x0

    .line 270
    .local v3, "resources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "package_name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 277
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 279
    .local v1, "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    .line 311
    .end local v1    # "id":I
    .end local v2    # "package_name":Ljava/lang/String;
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "package_name":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "101"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 282
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto :goto_0

    .line 283
    .end local v1    # "id":I
    :cond_1
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "103"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "135"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 285
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto :goto_0

    .line 286
    .end local v1    # "id":I
    :cond_3
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "105"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 288
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 289
    .end local v1    # "id":I
    :cond_4
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "111"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 291
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 292
    .end local v1    # "id":I
    :cond_5
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "151"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 294
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 295
    .end local v1    # "id":I
    :cond_6
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 297
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 298
    .end local v1    # "id":I
    :cond_7
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "202"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 300
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    .end local v1    # "id":I
    :cond_8
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "204"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 302
    const-string v4, "string"

    const-string v5, "psauthen_error10"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 303
    :cond_9
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 304
    const-string v4, "string"

    const-string v5, "psauthen_text20"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :cond_a
    sget-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;

    const-string v5, "120"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 306
    const-string v4, "string"

    const-string v5, "tgt_error"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 308
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 309
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static showLoginRegisterDialog(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .param p3, "loginOption"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 220
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 224
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "loginOption":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 226
    .restart local p3    # "loginOption":Landroid/os/Bundle;
    :cond_0
    const-string v5, "auto_onekey_login"

    invoke-virtual {p3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 227
    .local v1, "onekeyLogin":Z
    if-eqz v1, :cond_5

    .line 228
    const-string v5, "auto_onekey_login_no_ui_sso"

    invoke-virtual {p3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isNoUi:Z

    .line 229
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getOnkeyLoginTimes(Landroid/content/Context;)I

    move-result v2

    .line 230
    .local v2, "times":I
    const-string v5, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HHHHHHHHHHHHHHH times is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-ge v2, v9, :cond_3

    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->hasPermission(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 232
    const-string v5, "auto_onekey_login_handle_by_self"

    invoke-virtual {p3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isHandleErrorBySelf:Z

    .line 233
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isSimReady(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 235
    const-string v5, "auto_onekey_login_time_out"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 236
    .local v3, "timesOut":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .end local v3    # "timesOut":J
    :goto_0
    invoke-static {p0, p1, v3, v4, p2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->startPreOneKeyLoginProgress(Landroid/content/Context;Ljava/lang/String;JLcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    .line 264
    .end local v2    # "times":I
    :goto_1
    return-void

    .line 236
    .restart local v2    # "times":I
    .restart local v3    # "timesOut":J
    :cond_1
    const-wide/16 v3, 0x5a

    goto :goto_0

    .line 239
    .end local v3    # "timesOut":J
    :cond_2
    sget-boolean v5, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isHandleErrorBySelf:Z

    if-eqz v5, :cond_5

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "sim_error"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_3
    sget-boolean v5, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isNoUi:Z

    if-eqz v5, :cond_5

    .line 246
    if-lt v2, v9, :cond_4

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "auto_oneKeyLogin_times_more_than_limit"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    const-string v7, "auto_oneKeyLogin_application_no_permissions"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v8, v5}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_1

    .line 256
    .end local v2    # "times":I
    :cond_5
    invoke-static {p2}, Lcom/lenovo/lsf/account/PsLoginActivity;->setCallback(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v5, Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    const-string v5, "rid"

    invoke-virtual {p3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v5, "source"

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private static startOneKeyLoginProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .prologue
    .line 472
    new-instance v5, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    invoke-direct {v5, p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;-><init>(Landroid/content/Context;)V

    .line 474
    .local v5, "myHandler":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;
    new-instance v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 511
    return-void
.end method

.method private static startPreOneKeyLoginProgress(Landroid/content/Context;Ljava/lang/String;JLcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "times"    # J
    .param p4, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .prologue
    .line 322
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v3, "clk_login_auto_onekey"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, p1, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    new-instance v2, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;-><init>(Landroid/content/Context;)V

    .line 326
    .local v2, "myHandler":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getOnkeyLoginTimes(Landroid/content/Context;)I

    move-result v7

    .line 327
    .local v7, "t":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyLoginTimesKeyInOneDay()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    new-instance v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;-><init>(Landroid/content/Context;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 428
    return-void
.end method

.method private static unRegistSMSReceiver(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->receiver:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->receiver:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    :cond_0
    return-void
.end method
