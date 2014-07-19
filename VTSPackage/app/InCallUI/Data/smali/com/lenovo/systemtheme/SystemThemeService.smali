.class public Lcom/lenovo/systemtheme/SystemThemeService;
.super Lcom/lenovo/systemtheme/ISystemThemeService$Stub;
.source "SystemThemeService.java"


# static fields
.field public static final ACTION_SYSTEMWIDGET_THEME_CHANGED:Ljava/lang/String; = "action.systemwidgettheme.appling"

.field public static final ACTION_SYSTEM_WIDGET:Ljava/lang/String; = "action_themecenter_themechange_systemwidget"

.field private static final DBG:Z = true

.field public static LENOVO_RESOURCE_TYPE_MASK:I = 0x0

.field public static final SYSTEM_THEME_SERVICE:Ljava/lang/String; = "system_theme"

.field private static final TAG:Ljava/lang/String; = "SystemThemeService"

.field public static final THEME_CENTER_KEY_KEY_THEME_CHANGED:Ljava/lang/String; = "theme_value"

.field public static final THEME_CENTER_KEY_KEY_THEME_CHANGED_RESULT:Ljava/lang/String; = "theme_change_result"

.field public static final THEME_CENTER_KEY_PACKAGE_NAME:Ljava/lang/String; = "theme_packagename"

.field public static final TYPE_COLOR:Ljava/lang/String; = "color"

.field public static final TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static mId2NameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

.field private mResourceReady:Z

.field private mSystemReady:Z

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mThemePackageName:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/high16 v0, -0x10000

    sput v0, Lcom/lenovo/systemtheme/SystemThemeService;->LENOVO_RESOURCE_TYPE_MASK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mSystemReady:Z

    .line 67
    iput-boolean v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    .line 69
    new-instance v0, Lcom/lenovo/systemtheme/SystemThemeService$1;

    invoke-direct {v0, p0}, Lcom/lenovo/systemtheme/SystemThemeService$1;-><init>(Lcom/lenovo/systemtheme/SystemThemeService;)V

    iput-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mUIHandler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/systemtheme/SystemThemeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/systemtheme/SystemThemeService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/systemtheme/SystemThemeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/systemtheme/SystemThemeService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/systemtheme/SystemThemeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/systemtheme/SystemThemeService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getTypeNameById(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 411
    sget v0, Lcom/lenovo/systemtheme/SystemThemeService;->LENOVO_RESOURCE_TYPE_MASK:I

    and-int/2addr v0, p0

    const/high16 v1, 0x3080000

    if-ne v0, v1, :cond_0

    .line 412
    const-string v0, "drawable"

    .line 417
    :goto_0
    return-object v0

    .line 413
    :cond_0
    sget v0, Lcom/lenovo/systemtheme/SystemThemeService;->LENOVO_RESOURCE_TYPE_MASK:I

    and-int/2addr v0, p0

    const/high16 v1, 0x3060000

    if-ne v0, v1, :cond_1

    .line 414
    const-string v0, "color"

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadTheme(Ljava/lang/String;)Z
    .locals 9
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-static {}, Lcom/lenovo/ideaui/hook/IdeaUI_HookConfiguration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "savedThemePackageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    const-string v5, "SystemThemeService"

    const-string v6, "loadTheme: themePackageName is same"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit p0

    .line 286
    :goto_0
    return v4

    .line 245
    :cond_0
    const-string v6, "lenovo"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    const-string v5, "SystemThemeService"

    const-string v6, "loadTheme: set to default lenovo theme"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    .line 251
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    .line 252
    monitor-exit p0

    goto :goto_0

    .line 284
    .end local v0    # "savedThemePackageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 259
    .restart local v0    # "savedThemePackageName":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "SystemThemeService"

    const-string v7, "Start create SystemThemeResource"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 264
    .local v1, "startTime":J
    invoke-virtual {p0}, Lcom/lenovo/systemtheme/SystemThemeService;->initId2Name()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/lenovo/systemtheme/SystemThemeService;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 269
    .local v3, "themeRes":Landroid/content/res/Resources;
    if-nez v3, :cond_2

    .line 270
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/lenovo/systemtheme/SystemThemeService;->initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 276
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    .line 277
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    .line 281
    :cond_3
    const-string v5, "SystemThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End create SystemThemeResource in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms. mResourceReady = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 311
    .local v0, "Pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 319
    :goto_0
    return-object v2

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getThemeIdMap(Ljava/lang/String;)Lcom/lenovo/systemtheme/ThemeHashMap;
    .locals 4
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mResourceReady:Z

    if-nez v1, :cond_0

    .line 213
    const-string v1, "SystemThemeService"

    const-string v2, "getThemeIdMap : mResourceReady not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit p0

    .line 225
    :goto_0
    return-object v0

    .line 218
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    :cond_1
    const-string v1, "SystemThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeIdMap : themePackageName not eaqual to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    monitor-exit p0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 225
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public initId2Name()V
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "SystemThemeService"

    const-string v1, "initId2Name already inited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    .line 300
    const/high16 v0, 0x3080000

    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/SystemThemeService;->loadTypeId2Name(I)Z

    .line 301
    const/high16 v0, 0x3060000

    invoke-virtual {p0, v0}, Lcom/lenovo/systemtheme/SystemThemeService;->loadTypeId2Name(I)Z

    goto :goto_0
.end method

.method public initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 9
    .param p1, "themeRes"    # Landroid/content/res/Resources;
    .param p2, "themePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 376
    sget-object v7, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v6

    .line 380
    :cond_1
    if-eqz p1, :cond_0

    .line 384
    const-string v6, "SystemThemeService"

    const-string v7, "initId2Themeid start "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v6, Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-direct {v6}, Lcom/lenovo/systemtheme/ThemeHashMap;-><init>()V

    iput-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    .line 388
    sget-object v6, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 389
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 392
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 393
    .local v3, "resid":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 394
    .local v4, "resourceName":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/systemtheme/SystemThemeService;->getTypeNameById(I)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, "resourceType":Ljava/lang/String;
    invoke-virtual {p1, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, "mapId":I
    invoke-static {v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->isThemeResourceId(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    iget-object v6, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/systemtheme/ThemeHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 400
    :cond_3
    if-eqz v2, :cond_2

    .line 401
    const-string v6, "SystemThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initId2Themeid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " map a invalid ID of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 405
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "mapId":I
    .end local v3    # "resid":I
    .end local v4    # "resourceName":Ljava/lang/String;
    .end local v5    # "resourceType":Ljava/lang/String;
    :cond_4
    const-string v6, "SystemThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initId2Themeid end. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-virtual {v8}, Lcom/lenovo/systemtheme/ThemeHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " records."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public loadTypeId2Name(I)Z
    .locals 7
    .param p1, "startId"    # I

    .prologue
    .line 331
    move v3, p1

    .local v3, "resid":I
    :goto_0
    add-int/lit16 v4, p1, 0x320

    if-ge v3, v4, :cond_3

    .line 335
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->ideaui_getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 331
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 347
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 348
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 358
    :goto_2
    if-eqz v2, :cond_0

    .line 359
    sget-object v4, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 350
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 352
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "SystemThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadTypeId2Name end. Current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lenovo/systemtheme/SystemThemeService;->mId2NameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v4, 0x1

    return v4
.end method

.method public setSystemTheme(Ljava/lang/String;)Z
    .locals 6
    .param p1, "themePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 171
    :cond_0
    const-string v4, "SystemThemeService"

    const-string v5, "setSystemTheme: themePackageName is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    :goto_0
    return v3

    .line 175
    :cond_2
    iget-boolean v4, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mSystemReady:Z

    if-nez v4, :cond_3

    .line 176
    const-string v4, "SystemThemeService"

    const-string v5, "setSystemTheme: mSystemReady is false"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_3
    invoke-direct {p0, p1}, Lcom/lenovo/systemtheme/SystemThemeService;->loadTheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 190
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 191
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object p1, v1, Landroid/content/res/Configuration;->mSystemThemePackageName:Ljava/lang/String;

    .line 193
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_1
    const-string v3, "SystemThemeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSystemTheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v3, 0x1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 139
    const-string v1, "SystemThemeService"

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mSystemReady:Z

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_themecenter_themechange_systemwidget"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-static {}, Lcom/lenovo/ideaui/hook/IdeaUI_HookConfiguration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/systemtheme/SystemThemeService;->setSystemTheme(Ljava/lang/String;)Z

    .line 167
    return-void
.end method
