.class public Lcom/mediatek/gemini/GeminiSIMTetherMamager;
.super Ljava/lang/Object;
.source "GeminiSIMTetherMamager.java"


# static fields
.field private static final BGCOLOR_SIM_ABSENT:I = 0xa

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final COLUMN_PHONE_NUM:Ljava/lang/String; = "data1"

.field public static final COLUMN_PHONE_NUM_TYPE:Ljava/lang/String; = "data2"

.field public static final COLUMN_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final COLUMN_SIM_SOURCE_TYPE:Ljava/lang/String; = "indicate_phone_or_sim_contact"

.field public static final GEMINI_TETHER_URI:Landroid/net/Uri;

.field public static final PHONE_NUM_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field private static final TAG:Ljava/lang/String; = "GeminiSIMTetherManager"

.field private static sContext:Landroid/content/Context;

.field private static sManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

.field private static sSimInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrSIMID:Ljava/lang/String;

.field private mDataColumnArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "1"

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mDataColumnArr:[Ljava/lang/String;

    .line 48
    sput-object p1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    .line 66
    :cond_0
    sput-object p0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    .line 67
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    return-object v0
.end method


# virtual methods
.method public getAllContactData()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    const-string v2, "GeminiSIMTetherManager"

    const-string v3, "getAllContactData(), begin"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v24

    .line 249
    .local v24, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v2, 0x0

    new-array v8, v2, [Ljava/lang/String;

    .line 250
    .local v8, "currInsertedSIM":[Ljava/lang/String;
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 251
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v15

    .line 252
    .local v15, "listSize":I
    const-string v2, "GeminiSIMTetherManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current inserted sim num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-array v8, v15, [Ljava/lang/String;

    .line 254
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 255
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    move-wide/from16 v20, v0

    .line 256
    .local v20, "simId":J
    const-string v2, "GeminiSIMTetherManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserted sim id at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v12

    .line 254
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 261
    .end local v12    # "i":I
    .end local v15    # "listSize":I
    .end local v20    # "simId":J
    :cond_0
    const-string v25, ""

    .line 262
    .local v25, "simName":Ljava/lang/String;
    const/16 v19, -0x1

    .line 263
    .local v19, "simColor":I
    const/4 v9, 0x0

    .line 266
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v18, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/gemini/GeminiSIMTetherItem;>;"
    const-string v5, "mimetype=\'vnd.android.cursor.item/phone_v2\' and sim_id=\'-1\' and indicate_phone_or_sim_contact < 0"

    .line 270
    .local v5, "contactSelectStr":Ljava/lang/String;
    const-string v7, "display_name asc"

    .line 271
    .local v7, "contactOrderStr":Ljava/lang/String;
    const-string v2, "GeminiSIMTetherManager"

    const-string v3, "getAllContactData(), get all contact cursor begin"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 275
    const-string v2, "GeminiSIMTetherManager"

    const-string v3, "getAllContactData(), get all contact cursor end"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 277
    if-eqz v9, :cond_a

    .line 278
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 281
    const/16 v23, 0x0

    .line 282
    .local v23, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v2, "GeminiSIMTetherManager"

    const-string v3, "getAllContactData(), loop cursor begin"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_9

    .line 284
    const-string v16, ""

    .line 285
    .local v16, "numPrefix":Ljava/lang/String;
    const-string v25, ""

    .line 286
    const/16 v19, -0x1

    .line 288
    const-string v2, "display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, "displayName":Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 360
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v16    # "numPrefix":Ljava/lang/String;
    .end local v23    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_2

    .line 361
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 296
    .restart local v10    # "displayName":Ljava/lang/String;
    .restart local v16    # "numPrefix":Ljava/lang/String;
    .restart local v23    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    :try_start_1
    new-instance v13, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-direct {v13}, Lcom/mediatek/gemini/GeminiSIMTetherItem;-><init>()V

    .line 297
    .local v13, "item":Lcom/mediatek/gemini/GeminiSIMTetherItem;
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setContactId(I)V

    .line 298
    invoke-virtual {v13, v10}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setName(Ljava/lang/String;)V

    .line 300
    const-string v2, "data2"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 301
    .local v17, "numType":I
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data1"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setPhoneNum(Ljava/lang/String;)V

    .line 306
    const-string v2, "sim_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 308
    .local v22, "simIdString":Ljava/lang/String;
    if-eqz v22, :cond_4

    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 309
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 310
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    check-cast v23, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 316
    .restart local v23    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_2
    if-eqz v23, :cond_4

    .line 317
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 318
    const/16 v19, 0xa

    .line 321
    if-eqz v8, :cond_4

    array-length v2, v8

    if-lez v2, :cond_4

    .line 323
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    array-length v2, v8

    if-ge v14, v2, :cond_4

    .line 324
    aget-object v2, v8, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 325
    move-object/from16 v0, v23

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    move/from16 v19, v0

    .line 333
    .end local v14    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 334
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 338
    :goto_4
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setSimName(Ljava/lang/String;)V

    .line 339
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setSimColor(I)V

    .line 340
    invoke-virtual {v13}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getCheckedStatus()I

    move-result v2

    if-nez v2, :cond_5

    .line 341
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :cond_5
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 345
    :catch_0
    move-exception v11

    .line 346
    .local v11, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "GeminiSIMTetherManager"

    const-string v3, "getAllContactData---java.lang.IllegalStateException happen"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 348
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 351
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 352
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 353
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 354
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 312
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v23

    .line 314
    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 323
    .restart local v14    # "j":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 336
    .end local v14    # "j":I
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    goto :goto_4

    .line 357
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v13    # "item":Lcom/mediatek/gemini/GeminiSIMTetherItem;
    .end local v16    # "numPrefix":Ljava/lang/String;
    .end local v17    # "numType":I
    .end local v22    # "simIdString":Ljava/lang/String;
    :cond_9
    const-string v2, "GeminiSIMTetherManager"

    const-string v3, "getAllContactData(), loop cursor end"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    .end local v23    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_a
    if-eqz v9, :cond_b

    .line 361
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_b
    const-string v2, "GeminiSIMTetherManager"

    const-string v3, "getAllContactData(), end"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-object v18
.end method

.method public getCurrSIMID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrSimData()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const-string v1, "GeminiSIMTetherManager"

    const-string v2, "getCurrSimData() begin"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v16, ""

    .line 143
    .local v16, "simName":Ljava/lang/String;
    const/4 v14, -0x1

    .line 144
    .local v14, "simColor":I
    const/4 v7, 0x0

    .line 145
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 146
    .local v15, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 147
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    check-cast v15, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 154
    .restart local v15    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    if-eqz v15, :cond_0

    .line 155
    iget-object v0, v15, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 156
    iget v14, v15, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 160
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v13, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/gemini/GeminiSIMTetherItem;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimetype=\'vnd.android.cursor.item/phone_v2\' and sim_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "indicate_phone_or_sim_contact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "contactSelectStr":Ljava/lang/String;
    const-string v6, "display_name asc"

    .line 165
    .local v6, "contactOrderStr":Ljava/lang/String;
    const-string v1, "GeminiSIMTetherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query data from data table, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_5

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 174
    const-string v11, ""

    .line 176
    .local v11, "numPrefix":Ljava/lang/String;
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "displayName":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 209
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v11    # "numPrefix":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 150
    .end local v4    # "contactSelectStr":Ljava/lang/String;
    .end local v6    # "contactOrderStr":Ljava/lang/String;
    .end local v13    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/gemini/GeminiSIMTetherItem;>;"
    :cond_3
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v15

    .line 152
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sSimInfoMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 183
    .restart local v4    # "contactSelectStr":Ljava/lang/String;
    .restart local v6    # "contactOrderStr":Ljava/lang/String;
    .restart local v8    # "displayName":Ljava/lang/String;
    .restart local v11    # "numPrefix":Ljava/lang/String;
    .restart local v13    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/gemini/GeminiSIMTetherItem;>;"
    :cond_4
    :try_start_1
    new-instance v10, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-direct {v10}, Lcom/mediatek/gemini/GeminiSIMTetherItem;-><init>()V

    .line 184
    .local v10, "item":Lcom/mediatek/gemini/GeminiSIMTetherItem;
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setContactId(I)V

    .line 185
    invoke-virtual {v10, v8}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setName(Ljava/lang/String;)V

    .line 186
    const-string v1, "data2"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 187
    .local v12, "numType":I
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v12, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data1"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setPhoneNum(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setSimName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v10, v14}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setSimColor(I)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 194
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 197
    :catch_0
    move-exception v9

    .line 198
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "GeminiSIMTetherManager"

    const-string v2, "getCurrSimData---java.lang.IllegalStateException happen"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 200
    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 209
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    .end local v10    # "item":Lcom/mediatek/gemini/GeminiSIMTetherItem;
    .end local v11    # "numPrefix":Ljava/lang/String;
    .end local v12    # "numType":I
    :cond_5
    if-eqz v7, :cond_6

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_6
    const-string v1, "GeminiSIMTetherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==getCurrSimData== size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v13
.end method

.method public getTotalContactNum()I
    .locals 8

    .prologue
    .line 223
    const-string v0, "GeminiSIMTetherManager"

    const-string v1, "getTotalContactNum(), begin"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v6, 0x0

    .line 225
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 226
    .local v7, "number":I
    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' and indicate_phone_or_sim_contact < 0"

    .line 228
    .local v3, "contactSelectStr":Ljava/lang/String;
    const-string v5, "display_name asc"

    .line 230
    .local v5, "contactOrderStr":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    const-string v0, "GeminiSIMTetherManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalContactNum() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v7

    .line 234
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setCurrSIMID(Ljava/lang/String;)V
    .locals 0
    .param p1, "currSIMID"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCurrTetheredNum(Ljava/util/ArrayList;Z)V
    .locals 9
    .param p2, "clearAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "tetheredContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 97
    const-string v5, "GeminiSIMTetherManager"

    const-string v6, "setCurrTetheredNum(), begin"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype=\'vnd.android.cursor.item/phone_v2\' and sim_id= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "unBindSelectStr":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "sim_id"

    const-string v6, "-1"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz p2, :cond_0

    .line 106
    const-string v5, "GeminiSIMTetherManager"

    const-string v6, "setCurrTetheredNum(), clear all tether begin"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v5, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v3, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    const-string v5, "GeminiSIMTetherManager"

    const-string v6, "setCurrTetheredNum(), clear all tether end"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    const-string v0, ""

    .line 113
    .local v0, "bindSelectStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 114
    .local v2, "selectedSize":I
    const-string v5, "GeminiSIMTetherManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrTetheredNum(), tethered contact num = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 117
    if-lez v1, :cond_1

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_2
    const-string v5, "GeminiSIMTetherManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrTetheredNum(), bindSelectStr=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v5, "sim_id"

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->mCurrSIMID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v5, "GeminiSIMTetherManager"

    const-string v6, "setCurrTetheredNum(), reset all tether begin"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v5, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v0, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    const-string v5, "GeminiSIMTetherManager"

    const-string v6, "setCurrTetheredNum(), reset all tether end"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method
