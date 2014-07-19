.class Lcom/lenovo/lsf/account/ToolUtil;
.super Ljava/lang/Object;
.source "ToolUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    }
.end annotation


# static fields
.field private static final CONTENTTYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final TAG:Ljava/lang/String; = "ToolKit"

.field private static mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

.field public static oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

.field private static source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lenovo/lsf/account/PsPushHttpRequest;-><init>(Z)V

    sput-object v0, Lcom/lenovo/lsf/account/ToolUtil;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method public static getIMSI(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 503
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 505
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 509
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    const-string v3, "getSubscriberId"

    invoke-static {v2, v3, p1}, Lcom/lenovo/lsf/account/ToolUtil;->getTelephonyManagerInvoke(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 514
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 517
    :cond_0
    :try_start_1
    const-string v3, "getSubscriberIdGemini"

    invoke-static {v2, v3, p1}, Lcom/lenovo/lsf/account/ToolUtil;->getTelephonyManagerInvoke(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 525
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 533
    :cond_3
    :goto_2
    return-object v1

    .line 529
    :catch_0
    move-exception v3

    goto :goto_2

    .line 519
    :catch_1
    move-exception v3

    goto :goto_1

    .line 511
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private static getMethodDeclaration(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p1, "m"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 550
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 551
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 552
    const/4 v5, 0x1

    .line 557
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :goto_1
    return v5

    .line 550
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 557
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getOneKeyLoginTimesKeyInOneDay()Ljava/lang/String;
    .locals 4

    .prologue
    .line 561
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 562
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "LenovoID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getOneKeyRegisterDataNew(Landroid/content/Context;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "imei":Ljava/lang/String;
    new-instance v10, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-direct {v10}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;-><init>()V

    .line 66
    .local v10, "oneKeyInfo":Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    if-nez v5, :cond_0

    .line 67
    const-string v20, "USS-0201"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setErrorMessage(Ljava/lang/String;)V

    move-object v11, v10

    .line 146
    .end local v10    # "oneKeyInfo":Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .local v11, "oneKeyInfo":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 71
    .end local v11    # "oneKeyInfo":Ljava/lang/Object;
    .restart local v10    # "oneKeyInfo":Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    :cond_0
    const-string v20, "uss"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 72
    .local v19, "userServer":Ljava/lang/String;
    const-string v20, "ToolKit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getOneKeyRegisterDataNew : userServer == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "accounts/1.4/user/new/sms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 74
    .local v18, "urlData":Ljava/lang/String;
    const-string v20, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 76
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    const v21, 0xf423f

    invoke-virtual/range {v20 .. v21}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 77
    .local v14, "randomPassword":I
    const v20, 0x186a0

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const v21, 0x186a0

    add-int v21, v21, v14

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, "passwd":Ljava/lang/String;
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "password="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&source="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&deviceidtype="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&deviceid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&devicecategory="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&devicevendor="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceVendor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&devicefamily="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&devicemodel="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&lang="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&type=1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 88
    .local v13, "postData":Ljava/lang/String;
    const/4 v6, 0x0

    .line 89
    .local v6, "imsi":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ToolUtil;->getIMSI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "imsi1":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ToolUtil;->getIMSI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "imsi2":Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 92
    move-object v6, v7

    .line 96
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 97
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&imsi="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 100
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lenovo/lsf/account/ToolUtil;->getSimString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 101
    .local v16, "simOperator":Ljava/lang/String;
    const-string v20, "ToolKit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "simOperator  ======= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 103
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&so="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 106
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lenovo/lsf/account/ToolUtil;->getSimString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "networkOperator":Ljava/lang/String;
    const-string v20, "ToolKit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "networkOperator  ======= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 109
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&no="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 111
    :cond_4
    const-string v20, "ToolKit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "postData === "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v20, Lcom/lenovo/lsf/account/ToolUtil;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v21, "application/x-www-form-urlencoded"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v15

    .line 128
    .local v15, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v0, v15, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 129
    iget-object v0, v15, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lenovo/lsf/account/ToolUtil;->parseOneKeyRegisterData(Ljava/io/Reader;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v10

    .line 130
    if-eqz v10, :cond_7

    .line 131
    invoke-virtual {v10, v12}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setPassword(Ljava/lang/String;)V

    move-object v11, v10

    .line 132
    .restart local v11    # "oneKeyInfo":Ljava/lang/Object;
    goto/16 :goto_0

    .line 77
    .end local v6    # "imsi":Ljava/lang/String;
    .end local v7    # "imsi1":Ljava/lang/String;
    .end local v8    # "imsi2":Ljava/lang/String;
    .end local v9    # "networkOperator":Ljava/lang/String;
    .end local v11    # "oneKeyInfo":Ljava/lang/Object;
    .end local v12    # "passwd":Ljava/lang/String;
    .end local v13    # "postData":Ljava/lang/String;
    .end local v15    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v16    # "simOperator":Ljava/lang/String;
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 93
    .restart local v6    # "imsi":Ljava/lang/String;
    .restart local v7    # "imsi1":Ljava/lang/String;
    .restart local v8    # "imsi2":Ljava/lang/String;
    .restart local v12    # "passwd":Ljava/lang/String;
    .restart local v13    # "postData":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_1

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 94
    move-object v6, v8

    goto/16 :goto_2

    .restart local v9    # "networkOperator":Ljava/lang/String;
    .restart local v15    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .restart local v16    # "simOperator":Ljava/lang/String;
    :cond_7
    move-object v11, v10

    .line 134
    .restart local v11    # "oneKeyInfo":Ljava/lang/Object;
    goto/16 :goto_0

    .line 137
    .end local v11    # "oneKeyInfo":Ljava/lang/Object;
    :cond_8
    iget-object v0, v15, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "code":Ljava/lang/String;
    if-nez v4, :cond_9

    .line 139
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USS-0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setErrorMessage(Ljava/lang/String;)V

    move-object v11, v10

    .line 140
    .restart local v11    # "oneKeyInfo":Ljava/lang/Object;
    goto/16 :goto_0

    .line 141
    .end local v11    # "oneKeyInfo":Ljava/lang/Object;
    :cond_9
    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "USS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 142
    invoke-virtual {v10, v4}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setErrorMessage(Ljava/lang/String;)V

    move-object v11, v10

    .line 143
    .restart local v11    # "oneKeyInfo":Ljava/lang/Object;
    goto/16 :goto_0

    .line 145
    .end local v11    # "oneKeyInfo":Ljava/lang/Object;
    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USS-0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setErrorMessage(Ljava/lang/String;)V

    move-object v11, v10

    .line 146
    .restart local v11    # "oneKeyInfo":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public static getOneKeyRegisterResultNew(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v6, "uss"

    invoke-static {p0, v6}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "userServer":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "accounts/1.4/user/q/sms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "urlData":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "k="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v7}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getQueryMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&type=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "postData":Ljava/lang/String;
    sget-object v6, Lcom/lenovo/lsf/account/ToolUtil;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v6, p0, v4, v2, v7}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    .line 207
    .local v3, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v6, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 208
    iget-object v6, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {v6}, Lcom/lenovo/lsf/account/ToolUtil;->parseOneKeyRegisterResult(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "oneKeyInfoResult":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 221
    .end local v1    # "oneKeyInfoResult":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 212
    .restart local v1    # "oneKeyInfoResult":Ljava/lang/String;
    :cond_0
    const-string v1, "USS-0200"

    goto :goto_0

    .line 215
    .end local v1    # "oneKeyInfoResult":Ljava/lang/String;
    :cond_1
    iget-object v6, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v6}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USS-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 218
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, v0

    .line 219
    goto :goto_0

    .line 221
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USS-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRandomPassword()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x403a000000000000L

    .line 45
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_2

    .line 47
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 49
    .local v2, "readomWordNum":I
    rem-int/lit8 v4, v2, 0x3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4058400000000000L

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-char v1, v4

    .line 54
    .local v1, "readomLetter":C
    :goto_1
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "readomLetter":C
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4050400000000000L

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-char v1, v4

    .restart local v1    # "readomLetter":C
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 60
    .end local v1    # "readomLetter":C
    .end local v2    # "readomWordNum":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getSimString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "sim"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "result":Ljava/lang/String;
    const-string v2, "ToolKit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimString  sim  ======= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 156
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "s":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_2

    .line 159
    aget-object v2, v1, v5

    const-string v3, "46"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    aget-object p1, v1, v5

    .line 178
    .end local v1    # "s":[Ljava/lang/String;
    .end local p1    # "sim":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 162
    .restart local v1    # "s":[Ljava/lang/String;
    .restart local p1    # "sim":Ljava/lang/String;
    :cond_1
    aget-object v2, v1, v7

    const-string v3, "46"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    aget-object p1, v1, v7

    goto :goto_0

    .line 166
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_3

    .line 167
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "s":[Ljava/lang/String;
    :cond_3
    :goto_1
    move-object p1, v0

    .line 178
    goto :goto_0

    .line 174
    :cond_4
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_3

    .line 175
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/lenovo/lsf/account/ToolUtil;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/account/ToolUtil;->source:Ljava/lang/String;

    .line 37
    :cond_0
    sget-object v0, Lcom/lenovo/lsf/account/ToolUtil;->source:Ljava/lang/String;

    return-object v0
.end method

.method private static getTelephonyManagerInvoke(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5
    .param p0, "c"    # Landroid/telephony/TelephonyManager;
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 538
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-static {v1, p1}, Lcom/lenovo/lsf/account/ToolUtil;->getMethodDeclaration(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 540
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 544
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 542
    :catch_0
    move-exception v1

    .line 544
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseGetCountryResult(Ljava/io/Reader;)Ljava/util/Map;
    .locals 10
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v0, "CountryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 313
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 314
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 316
    .local v7, "xp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 317
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 319
    .local v4, "eventType":I
    const/4 v1, 0x0

    .line 320
    .local v1, "countrycode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 322
    .local v2, "countryname":Ljava/lang/String;
    :goto_0
    if-eq v4, v9, :cond_3

    .line 324
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "typeName":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    .line 326
    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 327
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_0
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 335
    goto :goto_0

    .line 328
    :cond_1
    const-string v8, "country"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 329
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 330
    :cond_2
    const-string v8, "lang"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 331
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 336
    .end local v1    # "countrycode":Ljava/lang/String;
    .end local v2    # "countryname":Ljava/lang/String;
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "typeName":Ljava/lang/String;
    .end local v7    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 339
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v0
.end method

.method private static parseGetPidAliasResult(Ljava/io/Reader;)Ljava/util/Map;
    .locals 10
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 344
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v4, "pidAliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 347
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 348
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 350
    .local v7, "xp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 351
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 352
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v9, :cond_3

    .line 353
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "typeName":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v1, v8, :cond_2

    .line 355
    const-string v8, "onepid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 356
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 357
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 358
    const/4 v3, 0x0

    .line 359
    .local v3, "pid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 360
    .local v5, "pidalias":Ljava/lang/String;
    const-string v8, "pid"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 361
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 363
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 364
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 365
    const-string v8, "pidalias"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 366
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 368
    :cond_1
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v3    # "pid":Ljava/lang/String;
    .end local v5    # "pidalias":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 372
    goto :goto_0

    .line 373
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "typeName":Ljava/lang/String;
    .end local v7    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v4
.end method

.method private static parseOneKeyRegisterData(Ljava/io/Reader;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 12
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v11, 0x1

    .line 267
    const/4 v6, 0x0

    .line 268
    .local v6, "queryMessage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 269
    .local v3, "invalidTime":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v4, "numberFromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v5, "numberSendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 273
    .local v7, "sendBody":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 274
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 275
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 277
    .local v9, "xp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 278
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 279
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v11, :cond_5

    .line 280
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, "typeName":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v1, v10, :cond_0

    .line 282
    const-string v10, "k"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 283
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 294
    :cond_0
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 295
    goto :goto_0

    .line 284
    :cond_1
    const-string v10, "ttl"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 285
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 286
    :cond_2
    const-string v10, "from"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 287
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 302
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "typeName":Ljava/lang/String;
    .end local v9    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v10, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    return-object v10

    .line 288
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "typeName":Ljava/lang/String;
    .restart local v9    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_1
    const-string v10, "to"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 289
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_4
    const-string v10, "body"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 291
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 296
    .end local v8    # "typeName":Ljava/lang/String;
    :cond_5
    new-instance v10, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-direct {v10}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;-><init>()V

    sput-object v10, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .line 297
    sget-object v10, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v10, v6}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setQueryMessage(Ljava/lang/String;)V

    .line 298
    sget-object v10, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v10, v3}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setInvalidTime(Ljava/lang/String;)V

    .line 299
    sget-object v10, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v10, v4}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setNumberFromList(Ljava/util/ArrayList;)V

    .line 300
    sget-object v10, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v10, v5}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setNumberSendList(Ljava/util/ArrayList;)V

    .line 301
    sget-object v10, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v10, v7}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->setSendBody(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static parseOneKeyRegisterResult(Ljava/io/Reader;)Ljava/lang/String;
    .locals 11
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v10, 0x1

    .line 230
    const/4 v7, 0x0

    .line 231
    .local v7, "username":Ljava/lang/String;
    const/4 v4, 0x0

    .line 232
    .local v4, "password":Ljava/lang/String;
    const/4 v5, 0x0

    .line 233
    .local v5, "status":Ljava/lang/String;
    const/4 v3, 0x0

    .line 235
    .local v3, "flag":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 236
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 237
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 239
    .local v8, "xp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 240
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 241
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v10, :cond_4

    .line 242
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "typeName":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v1, v9, :cond_0

    .line 244
    const-string v9, "username"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 254
    :cond_0
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 255
    goto :goto_0

    .line 246
    :cond_1
    const-string v9, "password"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 247
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 248
    :cond_2
    const-string v9, "status"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 249
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 250
    :cond_3
    const-string v9, "flag"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 256
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "typeName":Ljava/lang/String;
    .end local v8    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v5, :cond_5

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 260
    :cond_5
    const/4 v9, 0x0

    .line 262
    :goto_2
    return-object v9

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static sendMSimSms(Landroid/content/Context;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oneKeyInfo"    # Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .prologue
    .line 395
    const-string v6, "ToolKit"

    const-string v7, "HHHHHHH sendSms"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-nez p1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 400
    :cond_0
    :try_start_0
    const-string v6, "android.telephony.MSimSmsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 401
    .local v1, "clazz":Ljava/lang/Class;
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 402
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 403
    .local v4, "obj":Ljava/lang/Object;
    const/4 v6, 0x6

    new-array v0, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v0, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    .line 404
    .local v0, "args":[Ljava/lang/Class;
    const-string v6, "sendTextMessage"

    invoke-virtual {v1, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 405
    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "SMS_SEND_ACTIOIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 407
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getNumberSendList()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getSendBody()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 381
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 382
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "SMS_SEND_ACTIOIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 384
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 386
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setSource(Ljava/lang/String;)V
    .locals 0
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 41
    sput-object p0, Lcom/lenovo/lsf/account/ToolUtil;->source:Ljava/lang/String;

    .line 42
    return-void
.end method
