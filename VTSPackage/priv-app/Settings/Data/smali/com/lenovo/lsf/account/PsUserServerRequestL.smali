.class Lcom/lenovo/lsf/account/PsUserServerRequestL;
.super Ljava/lang/Object;
.source "PsUserServerRequestL.java"


# static fields
.field private static final ACCOUNT_EMAIL:Ljava/lang/String; = "email"

.field private static final ACCOUNT_MSISDN:Ljava/lang/String; = "msisdn"

.field private static final CONTENTTYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final TAG:Ljava/lang/String; = "PsUserServerRequestL"

.field private static mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lenovo/lsf/account/PsPushHttpRequest;-><init>(Z)V

    sput-object v0, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindingThirdPartyAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "accesstoken"    # Ljava/lang/String;
    .param p5, "refreshtoken"    # Ljava/lang/String;
    .param p6, "oauthversion"    # Ljava/lang/String;
    .param p7, "screenname"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "tname"    # Ljava/lang/String;
    .param p10, "tdes"    # Ljava/lang/String;
    .param p11, "onekey"    # Z

    .prologue
    .line 266
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "imei":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 268
    const-string v2, "USS-0201"

    .line 344
    .end local p7    # "screenname":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 271
    .restart local p7    # "screenname":Ljava/lang/String;
    :cond_1
    const-string v11, "@"

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 272
    const-string v8, "email"

    .line 277
    .local v8, "type":Ljava/lang/String;
    :goto_1
    const-string v11, "uss"

    invoke-static {p0, v11}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, "userServer":Ljava/lang/String;
    if-eqz p11, :cond_6

    .line 282
    const-string v5, "onekpass="

    .line 283
    .local v5, "passwordArgName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "authen/1.4/tgt/user/get2?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "urlData":Ljava/lang/String;
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&d=small"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&source="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&deviceidtype="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&deviceid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&devicecategory="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&devicevendor="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceVendor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&devicefamily="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&devicemodel="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&lang="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&appkey="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&accesstoken="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&refreshtoken="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&oauthversion="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&screenname="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p7, :cond_7

    .end local p7    # "screenname":Ljava/lang/String;
    :goto_3
    invoke-static/range {p7 .. p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&tid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&thirddesc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p10 .. p10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, "postData":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "imsi":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 311
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&imsi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 313
    :cond_2
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v11

    if-lez v11, :cond_3

    .line 314
    const-string v11, "RK_PUSHSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "POST: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    if-nez p11, :cond_9

    const-string v11, "https://"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 320
    sget-object v11, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v11, p0, v9, v6, v12}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v7

    .line 321
    .local v7, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v11, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    .line 322
    sget-object v11, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v11, p0, v9, v6, v12}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v7

    .line 330
    :cond_4
    :goto_4
    iget v11, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_a

    .line 331
    iget-object v11, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {v11}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseTgtData(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "data":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 335
    const-string v2, "USS-0200"

    goto/16 :goto_0

    .line 274
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "passwordArgName":Ljava/lang/String;
    .end local v6    # "postData":Ljava/lang/String;
    .end local v7    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "urlData":Ljava/lang/String;
    .end local v10    # "userServer":Ljava/lang/String;
    .restart local p7    # "screenname":Ljava/lang/String;
    :cond_5
    const-string v8, "msisdn"

    .restart local v8    # "type":Ljava/lang/String;
    goto/16 :goto_1

    .line 287
    .restart local v10    # "userServer":Ljava/lang/String;
    :cond_6
    const-string v5, "password="

    .line 288
    .restart local v5    # "passwordArgName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "wauthen/phonebinding?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "urlData":Ljava/lang/String;
    goto/16 :goto_2

    .line 290
    :cond_7
    const-string p7, ""

    goto/16 :goto_3

    .line 323
    .end local p7    # "screenname":Ljava/lang/String;
    .restart local v4    # "imsi":Ljava/lang/String;
    .restart local v6    # "postData":Ljava/lang/String;
    .restart local v7    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_8
    iget v11, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v12, -0x2

    if-ne v11, v12, :cond_4

    .line 324
    sget-object v11, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v11, p0, v9, v6, v12}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v7

    goto :goto_4

    .line 327
    .end local v7    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_9
    sget-object v11, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v11, p0, v9, v6, v12}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v7

    .restart local v7    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_4

    .line 338
    :cond_a
    iget-object v11, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v11}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "code":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 340
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USS-0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 341
    :cond_b
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "USS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object v2, v1

    .line 342
    goto/16 :goto_0

    .line 344
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USS-0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static forgetPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "captcha_id"    # Ljava/lang/String;
    .param p3, "captcha"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 526
    const-string v7, "@"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 527
    const-string v3, "email"

    .line 533
    .local v3, "type":Ljava/lang/String;
    :goto_0
    const-string v7, "uss"

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "userServer":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "accounts/1.2/passwd/forgot?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "urlData":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "postData":Ljava/lang/String;
    const-string v7, "https://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 543
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 544
    .local v2, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 545
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 553
    :cond_0
    :goto_1
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 562
    :goto_2
    return v6

    .line 529
    .end local v1    # "postData":Ljava/lang/String;
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "urlData":Ljava/lang/String;
    .end local v5    # "userServer":Ljava/lang/String;
    :cond_1
    const-string v3, "msisdn"

    .restart local v3    # "type":Ljava/lang/String;
    goto/16 :goto_0

    .line 546
    .restart local v1    # "postData":Ljava/lang/String;
    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .restart local v4    # "urlData":Ljava/lang/String;
    .restart local v5    # "userServer":Ljava/lang/String;
    :cond_2
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    .line 547
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    goto :goto_1

    .line 550
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_3
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_1

    .line 556
    :cond_4
    iget-object v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 558
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_2

    .line 559
    :cond_5
    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 560
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 562
    :cond_6
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_2
.end method

.method public static getNewTgtData(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 350
    const-string v7, "LenovoUser"

    const-string v8, "TgtData"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "tgtData":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 352
    const-string v1, "USS-0202"

    .line 408
    :goto_0
    return-object v1

    .line 355
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renewtgt"

    const-string v9, "renew_tgt"

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    const-string v7, "uss"

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "userServer":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "authen/1.2/tgt/renew"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "urlData":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lpsutgt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "postData":Ljava/lang/String;
    const-string v7, "https://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 368
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v5, v2, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    .line 369
    .local v3, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 370
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v5, v2, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    .line 378
    :cond_1
    :goto_1
    iget v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_5

    .line 379
    iget-object v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {v7}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseNewTgtData(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 381
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renewtgt"

    const-string v9, "renew_tgt_r_s"

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 371
    .end local v1    # "data":Ljava/lang/String;
    :cond_2
    iget v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    .line 372
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v5, v2, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    goto :goto_1

    .line 375
    .end local v3    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_3
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v5, v2, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    .restart local v3    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_1

    .line 385
    .restart local v1    # "data":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renewtgt"

    const-string v9, "renew_tgt_r_f"

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 388
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renew_tgt_r_f"

    const-string v9, "error_USS-0200"

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    const-string v1, "USS-0200"

    goto/16 :goto_0

    .line 394
    .end local v1    # "data":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renewtgt"

    const-string v9, "renew_tgt_r_f"

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 396
    iget-object v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 398
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renew_tgt_r_f"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error_USS-0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USS-0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 401
    :cond_6
    const/4 v7, 0x3

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "USS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 402
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renew_tgt_r_f"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v0

    .line 404
    goto/16 :goto_0

    .line 406
    :cond_7
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v7, v12, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v8, "lenovoid_renew_tgt_r_f"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error_USS-0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USS-0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 414
    const-string v6, "LenovoUser"

    const-string v7, "TgtData"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "tgtData":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 416
    const-string v1, "USS-0202"

    .line 476
    :goto_0
    return-object v1

    .line 419
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_getst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "get_st"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 423
    const-string v6, "uss"

    invoke-static {p0, v6}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "userServer":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "authen/1.2/st/get?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lpsutgt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&realm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&lang="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "urlData":Ljava/lang/String;
    const-string v6, "https://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 432
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 433
    .local v2, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 434
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 442
    :cond_1
    :goto_1
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    .line 443
    iget-object v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {v6}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseSTData(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "data":Ljava/lang/String;
    const-string v6, "USS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 445
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_getst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "get_st_r_s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 435
    .end local v1    # "data":Ljava/lang/String;
    :cond_2
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 436
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    goto :goto_1

    .line 439
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_3
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_1

    .line 449
    .restart local v1    # "data":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_getst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "get_st_r_f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lenovoid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "get_st_r_f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "error_USS-0200"

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 455
    const-string v1, "USS-0200"

    goto/16 :goto_0

    .line 458
    .end local v1    # "data":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_getst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "get_st_r_f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 461
    iget-object v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v6}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 463
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lenovoid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "get_st_r_f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error_USS-0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USS-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 467
    :cond_6
    const/4 v6, 0x3

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 468
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lenovoid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "get_st_r_f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v0

    .line 471
    goto/16 :goto_0

    .line 473
    :cond_7
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v6, v11, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lenovoid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "get_st_r_f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error_USS-0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USS-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getTgtData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lenovo/lsf/account/PsUserServerRequestL;->getTgtData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTgtData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "onekey"    # Z

    .prologue
    .line 192
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "imei":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 194
    const-string v1, "USS-0201"

    .line 260
    :cond_0
    :goto_0
    return-object v1

    .line 197
    :cond_1
    const-string v10, "@"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 198
    const-string v7, "email"

    .line 203
    .local v7, "type":Ljava/lang/String;
    :goto_1
    const-string v10, "uss"

    invoke-static {p0, v10}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "userServer":Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 208
    const-string v4, "onekpass="

    .line 209
    .local v4, "passwordArgName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "authen/1.2/tgt/user/get2?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "urlData":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "source="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&deviceidtype="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&deviceid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&devicecategory="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&devicevendor="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceVendor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&devicefamily="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&devicemodel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&lang="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "postData":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "imsi":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 227
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&imsi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    :cond_2
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v10

    if-lez v10, :cond_3

    .line 230
    const-string v10, "RK_PUSHSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "POST: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    if-nez p3, :cond_8

    const-string v10, "https://"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 236
    sget-object v10, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v10, p0, v8, v5, v11}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v6

    .line 237
    .local v6, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v10, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 238
    sget-object v10, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v10, p0, v8, v5, v11}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v6

    .line 246
    :cond_4
    :goto_3
    iget v10, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_9

    .line 247
    iget-object v10, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {v10}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseTgtData(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "data":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 251
    const-string v1, "USS-0200"

    goto/16 :goto_0

    .line 200
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "passwordArgName":Ljava/lang/String;
    .end local v5    # "postData":Ljava/lang/String;
    .end local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "urlData":Ljava/lang/String;
    .end local v9    # "userServer":Ljava/lang/String;
    :cond_5
    const-string v7, "msisdn"

    .restart local v7    # "type":Ljava/lang/String;
    goto/16 :goto_1

    .line 213
    .restart local v9    # "userServer":Ljava/lang/String;
    :cond_6
    const-string v4, "password="

    .line 214
    .restart local v4    # "passwordArgName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "authen/1.2/tgt/user/get?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "urlData":Ljava/lang/String;
    goto/16 :goto_2

    .line 239
    .restart local v3    # "imsi":Ljava/lang/String;
    .restart local v5    # "postData":Ljava/lang/String;
    .restart local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_7
    iget v10, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4

    .line 240
    sget-object v10, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v10, p0, v8, v5, v11}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v6

    goto :goto_3

    .line 243
    .end local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_8
    sget-object v10, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v10, p0, v8, v5, v11}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v6

    .restart local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_3

    .line 254
    :cond_9
    iget-object v10, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v10}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 256
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USS-0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 257
    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "USS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v1, v0

    .line 258
    goto/16 :goto_0

    .line 260
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USS-0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getVerifyInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 102
    const-string v7, "@"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    const-string v3, "email"

    .line 109
    .local v3, "type":Ljava/lang/String;
    :goto_0
    const-string v7, "uss"

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "userServer":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "accounts/1.2/v/getinfo?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "urlData":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "password="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "postData":Ljava/lang/String;
    const-string v7, "https://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 118
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 119
    .local v2, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 120
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 128
    :cond_0
    :goto_1
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 137
    :goto_2
    return v6

    .line 105
    .end local v1    # "postData":Ljava/lang/String;
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "urlData":Ljava/lang/String;
    .end local v5    # "userServer":Ljava/lang/String;
    :cond_1
    const-string v3, "msisdn"

    .restart local v3    # "type":Ljava/lang/String;
    goto :goto_0

    .line 121
    .restart local v1    # "postData":Ljava/lang/String;
    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .restart local v4    # "urlData":Ljava/lang/String;
    .restart local v5    # "userServer":Ljava/lang/String;
    :cond_2
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    .line 122
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    goto :goto_1

    .line 125
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_3
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_1

    .line 131
    :cond_4
    iget-object v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 133
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_2

    .line 134
    :cond_5
    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 137
    :cond_6
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_2
.end method

.method public static getverificationstatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string v6, "PsUserServerRequestL"

    const-string v7, "getverificationstatus"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v6, "LenovoUser"

    const-string v7, "TgtData"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "tgtData":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 146
    const-string v1, "USS-0202"

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 149
    :cond_1
    const-string v6, "uss"

    invoke-static {p0, v6}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "userServer":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "accounts/1.2/v/getverificationstatus?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lpsutgt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&lang="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "urlData":Ljava/lang/String;
    const-string v6, "https://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 156
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 157
    .local v2, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 158
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 165
    :cond_2
    :goto_1
    const-string v6, "PsUserServerRequestL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getverificationstatus:  ret == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    .line 168
    iget-object v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {v6}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseVerificationData(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "data":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 172
    const-string v1, "USS-0200"

    goto/16 :goto_0

    .line 159
    .end local v1    # "data":Ljava/lang/String;
    :cond_3
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    .line 160
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    goto :goto_1

    .line 163
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_4
    sget-object v6, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    invoke-virtual {v6, p0, v4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_1

    .line 175
    :cond_5
    iget-object v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v6}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USS-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 178
    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v1, v0

    .line 179
    goto/16 :goto_0

    .line 181
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USS-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static logout(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 568
    const-string v7, "LenovoUser"

    const-string v8, "TgtData"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "tgtData":Ljava/lang/String;
    const-string v7, "uss"

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "userServer":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "authen/1.2/clientlogout"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, "urlData":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lpsutgt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "postData":Ljava/lang/String;
    const-string v7, "https://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 580
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 581
    .local v2, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 582
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 590
    :cond_0
    :goto_0
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 599
    :goto_1
    return v6

    .line 583
    :cond_1
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    .line 584
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    goto :goto_0

    .line 587
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_2
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_0

    .line 593
    :cond_3
    iget-object v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 595
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_1

    .line 596
    :cond_4
    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 597
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 599
    :cond_5
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_1
.end method

.method public static registerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "captcha_id"    # Ljava/lang/String;
    .param p4, "captcha"    # Ljava/lang/String;
    .param p5, "countrycode"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "imei":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 34
    const/16 v9, 0xc9

    .line 95
    :goto_0
    return v9

    .line 38
    :cond_0
    if-eqz p1, :cond_5

    const-string v9, "@"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 39
    const-string v6, "email"

    .line 45
    .local v6, "type":Ljava/lang/String;
    :goto_1
    const-string v9, "uss"

    invoke-static {p0, v9}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "userServer":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "accounts/1.2/user/new/alldevice?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "urlData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "t="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&c="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&lang="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&source="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&deviceidtype="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&deviceid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&devicecategory="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&devicevendor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceVendor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&devicefamily="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&devicemodel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&osversion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getOsVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&getcode=n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "postData":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&location="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v9

    if-lez v9, :cond_2

    .line 66
    const-string v9, "RK_PUSHSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "POST: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&password="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "imsi":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&imsi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    :cond_3
    const-string v9, "https://"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 76
    sget-object v9, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v9, p0, v7, v4, v10}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v5

    .line 77
    .local v5, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v9, v5, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 78
    sget-object v9, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v9, p0, v7, v4, v10}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v5

    .line 86
    :cond_4
    :goto_2
    iget v9, v5, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_8

    .line 87
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 41
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "postData":Ljava/lang/String;
    .end local v5    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "urlData":Ljava/lang/String;
    .end local v8    # "userServer":Ljava/lang/String;
    :cond_5
    const-string v6, "msisdn"

    .restart local v6    # "type":Ljava/lang/String;
    goto/16 :goto_1

    .line 79
    .restart local v3    # "imsi":Ljava/lang/String;
    .restart local v4    # "postData":Ljava/lang/String;
    .restart local v5    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .restart local v7    # "urlData":Ljava/lang/String;
    .restart local v8    # "userServer":Ljava/lang/String;
    :cond_6
    iget v9, v5, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    .line 80
    sget-object v9, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v9, p0, v7, v4, v10}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v5

    goto :goto_2

    .line 83
    .end local v5    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_7
    sget-object v9, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v9, p0, v7, v4, v10}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v5

    .restart local v5    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_2

    .line 89
    :cond_8
    iget-object v9, v5, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v9}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "code":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 91
    iget v9, v5, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto/16 :goto_0

    .line 92
    :cond_9
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "USS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 93
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_0

    .line 95
    :cond_a
    iget v9, v5, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto/16 :goto_0
.end method

.method public static setPasswdInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldPasswd"    # Ljava/lang/String;
    .param p2, "newPasswd"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 482
    const-string v8, "LenovoUser"

    const-string v9, "UserName"

    invoke-static {p0, v8, v9}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "name":Ljava/lang/String;
    const-string v8, "LenovoUser"

    const-string v9, "AccountType"

    invoke-static {p0, v8, v9}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "type":Ljava/lang/String;
    const-string v8, "uss"

    invoke-static {p0, v8}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "userServer":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "accounts/1.2/passwd/modify?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "urlData":Ljava/lang/String;
    :try_start_0
    const-string v8, "UTF-8"

    invoke-static {p2, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 493
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "password="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&newpassword="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&source="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&lang="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "postData":Ljava/lang/String;
    const-string v8, "https://"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 500
    sget-object v8, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v8, p0, v5, v2, v9}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    .line 501
    .local v3, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v8, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 502
    sget-object v8, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v8, p0, v5, v2, v9}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    .line 510
    :cond_0
    :goto_1
    iget v8, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 519
    :goto_2
    return v7

    .line 503
    :cond_1
    iget v8, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 504
    sget-object v8, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v8, p0, v5, v2, v9}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    goto :goto_1

    .line 507
    .end local v3    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_2
    sget-object v8, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v8, p0, v5, v2, v9}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v3

    .restart local v3    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_1

    .line 513
    :cond_3
    iget-object v8, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v8}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 515
    iget v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_2

    .line 516
    :cond_4
    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "USS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 517
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    .line 519
    :cond_5
    iget v7, v3, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_2

    .line 491
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "postData":Ljava/lang/String;
    .end local v3    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public static setThirdAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "thirdName"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "nickName"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "tokenSecret"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 605
    const-string v7, "LenovoUser"

    const-string v8, "TgtData"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "tgtData":Ljava/lang/String;
    const-string v7, "uss"

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "userServer":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "authen/1.2/user3rd/settoken"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, "urlData":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lpsutgt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&thirdname="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&accesstoken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&tokensecret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&uidin3rd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&screenname="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "postData":Ljava/lang/String;
    const-string v7, "https://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 621
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 622
    .local v2, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 623
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .line 631
    :cond_0
    :goto_0
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 640
    :goto_1
    return v6

    .line 624
    :cond_1
    iget v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    .line 625
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    goto :goto_0

    .line 628
    .end local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_2
    sget-object v7, Lcom/lenovo/lsf/account/PsUserServerRequestL;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v7, p0, v4, v1, v8}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v2

    .restart local v2    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    goto :goto_0

    .line 634
    :cond_3
    iget-object v7, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    invoke-static {p0, v7}, Lcom/lenovo/lsf/account/PsXmlDataToolkit;->parseFault(Landroid/content/Context;Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 636
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_1

    .line 637
    :cond_4
    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "USS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 638
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 640
    :cond_5
    iget v6, v2, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    goto :goto_1
.end method
