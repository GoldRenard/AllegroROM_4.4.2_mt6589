.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;
.super Ljava/lang/Object;
.source "SettingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingService"


# instance fields
.field private context:Landroid/content/Context;

.field private dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

.field private wallpaper:[Ljava/lang/String;

.field private wallpaperKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "wallpaper"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->wallpaperKey:Ljava/lang/String;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/data/system/users/0/wallpaper"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->wallpaper:[Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->context:Landroid/content/Context;

    return-object v0
.end method

.method private buildSettingByType(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;)V
    .locals 15
    .param p1, "writer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "settingkey"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .prologue
    .line 207
    invoke-virtual/range {p3 .. p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->getType()I

    move-result v12

    .line 208
    .local v12, "type":I
    invoke-virtual/range {p3 .. p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 209
    .local v11, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 211
    .local v8, "actualimagecursor":Landroid/database/Cursor;
    packed-switch v12, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 213
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    const/4 v4, 0x0

    invoke-interface {v1, v11, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 214
    .local v14, "value":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 242
    .end local v14    # "value":I
    :catch_0
    move-exception v9

    .line 243
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SettingService"

    const-string v4, "\u53d6\u4e0d\u5230\u76f8\u5e94\u7684setting\u6570\u636e"

    invoke-static {v1, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v8, :cond_1

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 217
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    const-string v4, ""

    invoke-interface {v1, v11, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v1

    .line 245
    if-eqz v8, :cond_2

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_2
    throw v1

    .line 220
    :pswitch_2
    :try_start_3
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    const/4 v4, 0x0

    invoke-interface {v1, v11, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v4, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v11, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 226
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    const-string v4, ""

    invoke-interface {v1, v11, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "uriValue":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 231
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 232
    .local v3, "proj":[Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 233
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 234
    .local v7, "actualImageColumnIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, "imgPath":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->writePackageItem(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private buildWallpaper(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "writer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    .prologue
    .line 253
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->wallpaper:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 267
    :goto_1
    return-void

    .line 253
    :cond_0
    aget-object v2, v4, v3

    .line 254
    .local v2, "wpPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 257
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->writePackageItem(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->wallpaperKey:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SettingService"

    const-string v4, "\u53d6\u4e0d\u5230\u76f8\u5e94\u7684setting\u6570\u636e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 262
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SettingService"

    const-string v4, "\u53d6\u4e0d\u5230\u76f8\u5e94\u7684setting\u6570\u636e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 253
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getInternalRingtones(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 174
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 175
    const-string v3, "_id"

    aput-object v3, v2, v6

    .line 176
    const-string v3, "_data"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 178
    const-string v4, "title_key"

    aput-object v4, v2, v3

    .line 179
    const-string v3, "_data=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 180
    const-string v5, "title_key"

    .line 172
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 184
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "status":Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->context:Landroid/content/Context;

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 190
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    .line 191
    const-string v3, "_data"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    .line 192
    const-string v4, "title_key"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    .line 193
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 194
    const-string v5, "title_key"

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->getInternalRingtones(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, "internalCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 145
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "uriString":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    .end local v2    # "uriString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 149
    :catchall_0
    move-exception v3

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    throw v3

    .line 150
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->getMediaRingtones(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    .local v1, "mediaCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 157
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 161
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .restart local v2    # "uriString":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    .end local v2    # "uriString":Ljava/lang/String;
    :catchall_1
    move-exception v3

    .line 166
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 167
    throw v3

    .line 166
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private putSettingByType(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;)V
    .locals 16
    .param p1, "allSettingJson"    # Lorg/json/JSONObject;
    .param p2, "reader"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;
    .param p3, "settingkey"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    .prologue
    .line 85
    invoke-virtual/range {p3 .. p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->getType()I

    move-result v10

    .line 86
    .local v10, "type":I
    invoke-virtual/range {p3 .. p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 88
    .local v12, "value":Ljava/lang/Object;
    if-nez v12, :cond_0

    .line 135
    :goto_0
    return-void

    .line 92
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 134
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    const/4 v15, 0x0

    invoke-interface {v14, v5, v15}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->getUriFor(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 94
    :pswitch_0
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 95
    .local v4, "intValue":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    invoke-interface {v13, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->putInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    .end local v4    # "intValue":I
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    const-string v13, "SettingService"

    const-string v14, "\u653e\u5165\u8bbe\u7f6e\u5c5e\u6027\u9519\u8bef\uff0c"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "strValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    invoke-interface {v13, v5, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 102
    .end local v9    # "strValue":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 103
    .local v3, "fValue":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    invoke-interface {v13, v5, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->putFloat(Ljava/lang/String;F)Z

    goto :goto_1

    .line 106
    .end local v3    # "fValue":F
    :pswitch_3
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 107
    .local v6, "lValue":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    invoke-interface {v13, v5, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->putLong(Ljava/lang/String;J)Z

    goto :goto_1

    .line 110
    .end local v6    # "lValue":J
    :pswitch_4
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "uriValue":Ljava/lang/String;
    const-string v13, "/"

    const-string v14, "_"

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 112
    .local v2, "entryName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 114
    :try_start_2
    new-instance v13, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->readPackageItem(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :cond_1
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "newUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;

    invoke-interface {v13, v5, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 121
    .end local v8    # "newUri":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    const-string v13, "SettingService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u5199\u5165\u6587\u4ef6"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u51fa\u9519"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private putWallpaper(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;)V
    .locals 8
    .param p1, "wallPaperValue"    # Ljava/lang/String;
    .param p2, "reader"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    .prologue
    .line 60
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->wallpaper:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_1

    .line 81
    :cond_0
    :goto_1
    return-void

    .line 60
    :cond_1
    aget-object v3, v5, v4

    .line 61
    .local v3, "wpPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    const-string v4, "/"

    const-string v5, "_"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "entryName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 66
    :try_start_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$1;

    invoke-direct {v4, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;)V

    invoke-virtual {p2, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->readPackageItem(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "SettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5199\u5165\u6587\u4ef6"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u51fa\u9519"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entryName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public buildAllSettingKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "writer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    .prologue
    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v0, "json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 201
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->buildWallpaper(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;)V

    .line 202
    return-object v0

    .line 198
    :cond_0
    aget-object v1, v3, v2

    .line 199
    .local v1, "settingkey":Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->buildSettingByType(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public putSettingValue(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;)V
    .locals 5
    .param p1, "allSettingJson"    # Lorg/json/JSONObject;
    .param p2, "reader"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;

    .prologue
    .line 50
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;->values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 53
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->wallpaperKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "wallPaperValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-direct {p0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->putWallpaper(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;)V

    .line 57
    :cond_0
    return-void

    .line 50
    .end local v1    # "wallPaperValue":Ljava/lang/String;
    :cond_1
    aget-object v0, v3, v2

    .line 51
    .local v0, "settingkey":Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->putSettingByType(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
