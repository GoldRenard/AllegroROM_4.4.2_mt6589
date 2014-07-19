.class Lcom/lenovo/lsf/account/PsUserServerToolkitL;
.super Ljava/lang/Object;
.source "PsUserServerToolkitL.java"


# static fields
.field private static final ACCOUNT_EMAIL:Ljava/lang/String; = "email"

.field private static final ACCOUNT_MSISDN:Ljava/lang/String; = "msisdn"

.field private static final TAG:Ljava/lang/String; = "RK_PUSHSDK"

.field private static final USERDATA_URI:Landroid/net/Uri;

.field public static isLogoutting:Z

.field private static isRenewTgting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "content://com.android.provider.pushsetting/userdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->USERDATA_URI:Landroid/net/Uri;

    .line 31
    sput-boolean v1, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    .line 32
    sput-boolean v1, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isRenewTgting:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RefreshTgt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "addAccount"    # Z

    .prologue
    .line 105
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->RefreshTgt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RefreshTgt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "addAccount"    # Z
    .param p4, "onekey"    # Z
    .param p5, "rid"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_0
    const-string v7, "USS-0103"

    .line 98
    :cond_1
    :goto_0
    return-object v7

    .line 73
    :cond_2
    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    :cond_3
    const-string v7, "USS-0101"

    goto :goto_0

    .line 77
    :cond_4
    if-eqz p4, :cond_6

    .line 78
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getTgtData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "result":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 86
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 88
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "value":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v9, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    aget-object v0, v9, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    aget-object v0, v9, v0

    if-nez v0, :cond_7

    .line 90
    :cond_5
    const-string v7, "USS-0200"

    goto :goto_0

    .line 81
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "time":Landroid/text/format/Time;
    .end local v9    # "value":[Ljava/lang/String;
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getTgtData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "result":Ljava/lang/String;
    goto :goto_1

    .line 92
    .restart local v8    # "time":Landroid/text/format/Time;
    .restart local v9    # "value":[Ljava/lang/String;
    :cond_7
    if-eqz p3, :cond_8

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    const/4 v0, 0x2

    aget-object v2, v9, v0

    const/4 v0, 0x0

    aget-object v5, v9, v0

    const/4 v0, 0x1

    aget-object v6, v9, v0

    move-object v0, p0

    move-object v1, p5

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->addLenovoAccount2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_8
    const/4 v0, 0x0

    aget-object v3, v9, v0

    const/4 v0, 0x1

    aget-object v4, v9, v0

    const/4 v0, 0x2

    aget-object v5, v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->saveLoginInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    const/4 v0, 0x0

    aget-object v7, v9, v0

    goto :goto_0
.end method

.method static addLenovoAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v3, "test"

    const-string v4, "HHHHHHHHHHHHHHHHH addLenovoAccount"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 424
    .local v2, "mAccountManager":Landroid/accounts/AccountManager;
    new-instance v0, Landroid/accounts/Account;

    const-string v3, "com.lenovo.lsf.account"

    invoke-direct {v0, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .local v0, "account":Landroid/accounts/Account;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, p2, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "mAccountManager":Landroid/accounts/AccountManager;
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static addLenovoAccount2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "tgtData"    # Ljava/lang/String;
    .param p6, "tgtExpiredTime"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isLeCloudHelper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p0, p3, p4}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->addLenovoAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/lenovo/lsf/account/UserAuthen;->ssoLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bindingThirdPartyAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "accesstoken"    # Ljava/lang/String;
    .param p6, "refreshtoken"    # Ljava/lang/String;
    .param p7, "oauthversion"    # Ljava/lang/String;
    .param p8, "screenname"    # Ljava/lang/String;
    .param p9, "tid"    # Ljava/lang/String;
    .param p10, "tname"    # Ljava/lang/String;
    .param p11, "tdes"    # Ljava/lang/String;
    .param p12, "onekey"    # Z

    .prologue
    .line 155
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :cond_0
    const-string v13, "USS-0103"

    .line 174
    :cond_1
    :goto_0
    return-object v13

    :cond_2
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    .line 158
    invoke-static/range {v1 .. v12}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->bindingThirdPartyAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 161
    .local v13, "result":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, "value":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v14, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    aget-object v1, v14, v1

    if-nez v1, :cond_4

    .line 166
    :cond_3
    const-string v13, "USS-0200"

    goto :goto_0

    .line 168
    :cond_4
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    const/4 v1, 0x2

    aget-object v3, v14, v1

    const/4 v1, 0x0

    aget-object v6, v14, v1

    const/4 v1, 0x1

    aget-object v7, v14, v1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->addLenovoAccount2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_5
    const/4 v1, 0x0

    aget-object v4, v14, v1

    const/4 v1, 0x1

    aget-object v5, v14, v1

    const/4 v1, 0x2

    aget-object v6, v14, v1

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->saveLoginInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    const/4 v1, 0x0

    aget-object v13, v14, v1

    goto :goto_0
.end method

.method private static delAllValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(sid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 412
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->USERDATA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 414
    const/4 v3, 0x1

    .line 416
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static forgetPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "captcha_id"    # Ljava/lang/String;
    .param p3, "captcha"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->forgetPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 377
    .local v0, "result":I
    return v0
.end method

.method private static getAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 468
    .local v1, "mAccountManager":Landroid/accounts/AccountManager;
    const-string v2, "com.lenovo.lsf.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 471
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 473
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 477
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string v13, "LenovoUser"

    const-string v14, "IsLogon"

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "isLogon":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_0

    sget-boolean v13, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    if-eqz v13, :cond_2

    .line 255
    :cond_0
    const-string v5, "USS-0202"

    .line 314
    :cond_1
    :goto_0
    return-object v5

    .line 258
    :cond_2
    const-string v13, "LenovoUser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "st"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "oldst":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 261
    const-string v13, "LenovoUser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "soldtime":Ljava/lang/String;
    const-string v13, "LenovoUser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ttl"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "soldttl":Ljava/lang/String;
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    .line 266
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    add-long/2addr v13, v15

    const-wide/16 v15, 0xe10

    sub-long v10, v13, v15

    .line 268
    .local v10, "ttltime":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 269
    .local v4, "newtime":Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 270
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long v1, v13, v15

    .line 271
    .local v1, "curtime":J
    cmp-long v13, v1, v10

    if-gez v13, :cond_3

    .line 272
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v13

    if-lez v13, :cond_1

    .line 273
    const-string v13, "RK_PUSHSDK"

    const-string v14, "getStData(): cache stdata is valid"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v1    # "curtime":J
    .end local v4    # "newtime":Landroid/text/format/Time;
    .end local v7    # "soldtime":Ljava/lang/String;
    .end local v8    # "soldttl":Ljava/lang/String;
    .end local v10    # "ttltime":J
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isTgtValid(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_4

    sget-boolean v13, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isRenewTgting:Z

    if-nez v13, :cond_4

    .line 280
    const/4 v13, 0x1

    sput-boolean v13, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isRenewTgting:Z

    .line 281
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->renewTgtData(Landroid/content/Context;)Ljava/lang/String;

    .line 284
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v13

    if-lez v13, :cond_5

    .line 285
    const-string v13, "RK_PUSHSDK"

    const-string v14, "getStData(): cache stdata is invalid"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_5
    invoke-static/range {p0 .. p1}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "result":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "USS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 288
    const-string v13, "USS-0120"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 289
    const-string v13, "RK_PUSHSDK"

    const-string v14, "getStData(): TGT invalid"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v13

    const/4 v14, 0x5

    const-string v15, "SPECIAL_TOKEN"

    const-string v16, "QJFOKY5F65WI"

    invoke-virtual/range {v13 .. v16}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v13

    const-string v14, "lenovoid_logout"

    const-string v15, "tgt_invalid_logout"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->logout(Landroid/content/Context;)I

    :cond_6
    move-object v5, v6

    .line 294
    goto/16 :goto_0

    .line 296
    :cond_7
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 297
    .local v9, "time":Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 298
    const-string v13, ":"

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 299
    .local v12, "value":[Ljava/lang/String;
    const-string v13, "LenovoUser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "st"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v12, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    const-string v13, "LenovoUser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ttl"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v12, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 303
    const-string v13, "LenovoUser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    array-length v13, v12

    const/4 v14, 0x4

    if-ne v13, v14, :cond_8

    .line 306
    const-string v13, "LenovoUser"

    const-string v14, "TgtData"

    const/4 v15, 0x2

    aget-object v15, v12, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    const-string v13, "LenovoUser"

    const-string v14, "TgtDatattl"

    const/4 v15, 0x3

    aget-object v15, v12, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    const-string v13, "LenovoUser"

    const-string v14, "TgtDatatime"

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    :cond_8
    const/4 v13, 0x0

    aget-object v5, v12, v13

    goto/16 :goto_0
.end method

.method public static getVerifyInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getVerifyInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "result":I
    return v0
.end method

.method public static getverificationstatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getverificationstatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private static isTgtValid(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-string v9, "LenovoUser"

    const-string v10, "TgtData"

    invoke-static {p0, v9, v10}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "oldtgt":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 184
    :try_start_0
    const-string v9, "LenovoUser"

    const-string v10, "TgtDatatime"

    invoke-static {p0, v9, v10}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "soldtime":Ljava/lang/String;
    const-string v9, "LenovoUser"

    const-string v10, "TgtDatattl"

    invoke-static {p0, v9, v10}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "soldttl":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x2

    div-long/2addr v11, v13

    sub-long v7, v9, v11

    .line 192
    .local v7, "ttltime":J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 193
    .local v3, "newtime":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 194
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v0, v9, v11

    .line 195
    .local v0, "curtime":J
    cmp-long v9, v0, v7

    if-gez v9, :cond_1

    .line 196
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v9

    if-lez v9, :cond_0

    .line 197
    const-string v9, "RK_PUSHSDK"

    const-string v10, "regetTgtData(): cache tgtdata is valid"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    const/4 v9, 0x1

    .line 207
    .end local v0    # "curtime":J
    .end local v3    # "newtime":Landroid/text/format/Time;
    .end local v5    # "soldtime":Ljava/lang/String;
    .end local v6    # "soldttl":Ljava/lang/String;
    .end local v7    # "ttltime":J
    :goto_0
    return v9

    .line 200
    .restart local v0    # "curtime":J
    .restart local v3    # "newtime":Landroid/text/format/Time;
    .restart local v5    # "soldtime":Ljava/lang/String;
    .restart local v6    # "soldttl":Ljava/lang/String;
    .restart local v7    # "ttltime":J
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 202
    .end local v0    # "curtime":J
    .end local v3    # "newtime":Landroid/text/format/Time;
    .end local v5    # "soldtime":Ljava/lang/String;
    .end local v6    # "soldttl":Ljava/lang/String;
    .end local v7    # "ttltime":J
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    goto :goto_0

    .line 207
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized loginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "onekey"    # Z
    .param p5, "rid"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v6, Lcom/lenovo/lsf/account/PsUserServerToolkitL;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 55
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "LenovoUser"

    const-string v1, "TgtData"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    :goto_0
    monitor-exit v6

    return-object v0

    .line 60
    :cond_0
    :try_start_1
    const-string v0, "USS-0999"

    goto :goto_0

    .line 62
    :cond_1
    if-eqz p4, :cond_2

    .line 63
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->RefreshTgt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->RefreshTgt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized logout(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const-class v1, Lcom/lenovo/lsf/account/PsUserServerToolkitL;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    .line 382
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->logout(Landroid/content/Context;)I

    .line 383
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->removeLenovoAccount(Landroid/content/Context;)V

    .line 384
    const-string v0, "DataCache"

    const-string v2, "autoOnekeyLogin"

    const-string v3, "0"

    invoke-static {p0, v0, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 386
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->sendStatusIntent(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static newStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 319
    const-string v4, "LenovoUser"

    const-string v5, "IsLogon"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "isLogon":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    if-eqz v4, :cond_2

    .line 322
    :cond_0
    const-string v1, "USS-0202"

    .line 358
    :cond_1
    :goto_0
    return-object v1

    .line 325
    :cond_2
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isTgtValid(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isRenewTgting:Z

    if-nez v4, :cond_3

    .line 326
    sput-boolean v7, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isRenewTgting:Z

    .line 327
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->renewTgtData(Landroid/content/Context;)Ljava/lang/String;

    .line 330
    :cond_3
    const-string v4, "RK_PUSHSDK"

    const-string v5, "newStData(): "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p0, p1}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "USS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    const-string v4, "USS-0120"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    if-nez v4, :cond_1

    .line 334
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const/4 v5, 0x5

    const-string v6, "SPECIAL_TOKEN"

    const-string v7, "QJFOKY5F65WI"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_logout"

    const-string v6, "tgt_invalid_logout"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->logout(Landroid/content/Context;)I

    goto :goto_0

    .line 340
    :cond_4
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 341
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 342
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "value":[Ljava/lang/String;
    const-string v4, "LenovoUser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "st"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 345
    const-string v4, "LenovoUser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ttl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    const-string v4, "LenovoUser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 350
    const-string v4, "LenovoUser"

    const-string v5, "TgtData"

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 352
    const-string v4, "LenovoUser"

    const-string v5, "TgtDatattl"

    aget-object v6, v3, v9

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    const-string v4, "LenovoUser"

    const-string v5, "TgtDatatime"

    invoke-virtual {v2, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    :cond_5
    aget-object v1, v3, v8

    goto/16 :goto_0
.end method

.method public static registerAccountNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "captcha_id"    # Ljava/lang/String;
    .param p4, "captcha"    # Ljava/lang/String;
    .param p5, "countrycode"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static/range {p0 .. p5}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->registerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 38
    .local v0, "result":I
    return v0
.end method

.method public static removeLenovoAccount(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    const-string v0, "LenovoUser"

    invoke-static {p0, v0}, Lcom/lenovo/lsf/account/PsPushUserData;->delAllValue(Landroid/content/Context;Ljava/lang/String;)Z

    .line 400
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsPushUserData;->delAllStValue(Landroid/content/Context;)Z

    .line 401
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isInstalledOld(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    const-string v0, "LenovoUser"

    invoke-static {p0, v0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->delAllValue(Landroid/content/Context;Ljava/lang/String;)Z

    .line 405
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    .line 406
    return-void
.end method

.method private static renewTgtData(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 211
    const-string v4, "LenovoUser"

    const-string v5, "IsLogon"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "isLogon":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 214
    :cond_0
    const-string v1, "USS-0202"

    .line 246
    :cond_1
    :goto_0
    return-object v1

    .line 217
    :cond_2
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_3

    .line 218
    const-string v4, "RK_PUSHSDK"

    const-string v5, "regetTgtData(): cache tgtdata is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getNewTgtData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "result":Ljava/lang/String;
    sget-boolean v4, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isRenewTgting:Z

    if-eqz v4, :cond_4

    .line 221
    sput-boolean v10, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isRenewTgting:Z

    .line 223
    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "USS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 224
    const-string v4, "USS-0120"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    if-nez v4, :cond_1

    .line 225
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const/4 v5, 0x5

    const-string v6, "SPECIAL_TOKEN"

    const-string v7, "QJFOKY5F65WI"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_logout"

    const-string v6, "tgt_invalid_logout"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->logout(Landroid/content/Context;)I

    goto :goto_0

    .line 231
    :cond_5
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 232
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 233
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "value":[Ljava/lang/String;
    aget-object v4, v3, v10

    if-eqz v4, :cond_6

    aget-object v4, v3, v7

    if-eqz v4, :cond_6

    aget-object v4, v3, v8

    if-eqz v4, :cond_6

    .line 235
    const-string v4, "LenovoUser"

    const-string v5, "TgtData"

    aget-object v6, v3, v10

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    const-string v4, "LenovoUser"

    const-string v5, "TgtDatattl"

    aget-object v6, v3, v7

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    const-string v4, "LenovoUser"

    const-string v5, "Userid"

    aget-object v6, v3, v8

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    const-string v4, "LenovoUser"

    const-string v5, "TgtDatatime"

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    aget-object v1, v3, v10

    goto/16 :goto_0

    .line 246
    :cond_6
    const-string v1, "USS-0200"

    goto/16 :goto_0
.end method

.method public static saveLoginInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "tgt"    # Ljava/lang/String;
    .param p4, "ttl"    # Ljava/lang/String;
    .param p5, "userid"    # Ljava/lang/String;
    .param p6, "addAccount"    # Z

    .prologue
    .line 111
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 112
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 114
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 115
    const-string v1, "LenovoUser"

    const-string v2, "Userid"

    invoke-static {p0, v1, v2, p5}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    const-string v1, "LenovoUser"

    const-string v2, "UserName"

    invoke-static {p0, v1, v2, p1}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    const-string v1, "LenovoUser"

    const-string v2, "Password"

    invoke-static {p0, v1, v2, p2}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    const-string v1, "LenovoUser"

    const-string v2, "IsLogon"

    const-string v3, "1"

    invoke-static {p0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    const-string v1, "LenovoUser"

    const-string v2, "TgtData"

    invoke-static {p0, v1, v2, p3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    const-string v1, "LenovoUser"

    const-string v2, "TgtDatattl"

    invoke-static {p0, v1, v2, p4}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    const-string v1, "LenovoUser"

    const-string v2, "TgtDatatime"

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    if-eqz p6, :cond_0

    .line 133
    const-string v1, "LenovoUser"

    const-string v2, "LoginTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    :cond_0
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "LenovoUser"

    const-string v2, "AccountType"

    const-string v3, "email"

    invoke-static {p0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lenovoid_has_login"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->sendStatusIntent(Landroid/content/Context;I)V

    .line 148
    return-void

    .line 142
    :cond_1
    const-string v1, "LenovoUser"

    const-string v2, "AccountType"

    const-string v3, "msisdn"

    invoke-static {p0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static sendStatusIntent(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".android.intent.action.LENOVOUSER_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method public static setPasswdInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldPasswd"    # Ljava/lang/String;
    .param p2, "newPasswd"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->setPasswdInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 366
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 367
    const-string v1, "LenovoUser"

    const-string v2, "Password"

    invoke-static {p0, v1, v2, p2}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 370
    :cond_0
    return v0
.end method

.method static setUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 448
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 450
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    const/4 v2, 0x1

    .line 458
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_0
    return v2

    .line 454
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 458
    const/4 v2, 0x0

    goto :goto_0
.end method
