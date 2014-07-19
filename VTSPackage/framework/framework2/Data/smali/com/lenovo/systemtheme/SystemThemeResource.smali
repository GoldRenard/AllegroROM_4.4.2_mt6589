.class public Lcom/lenovo/systemtheme/SystemThemeResource;
.super Ljava/lang/Object;
.source "SystemThemeResource.java"


# static fields
.field private static final DBG:Z = true

.field public static final FRAMEWORK_RESOURCE_ID_BEGIN:I = 0x1000000

.field public static final FRAMEWORK_RESOURCE_ID_END:I = 0x1ffffff

.field public static final LENOVO_COLOR_START_ID:I = 0x3060000

.field public static final LENOVO_DRAWABLE_START_ID:I = 0x3080000

.field public static final LENOVO_RESOURCE_ID_BEGIN:I = 0x3000000

.field public static final LENOVO_RESOURCE_ID_END:I = 0x3ffffff

.field public static final MAX_LENOVO_RESOUCE_ID_COUNT:I = 0x320

.field public static final MIPMAP_TYPE:Ljava/lang/String; = "mipmap"

.field public static final RESOURCE_TYPE_COUNT:I = 0x10

.field public static final RESOURCE_TYPE_MASK:I = 0xff0000

.field public static final RESOURCE_TYPE_SHIFT:I = 0x10

.field public static final SUPPORT_SYSTEM_THEME:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemThemeResource"

.field public static final THEME_DEBUG_PERSIST:Ljava/lang/String; = "persist.sys.theme.debug"

.field public static final THEME_RESOURCE_ID_BEGIN:I = 0x5000000

.field public static final THEME_RESOURCE_ID_END:I = 0x5ffffff


# instance fields
.field private mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

.field private mResourceReady:Z

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeResource:Landroid/content/res/Resources;

.field private mUserContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 83
    invoke-static {}, Lcom/lenovo/ideaui/hook/IdeaUI_HookConfiguration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "themePackageName":Ljava/lang/String;
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    .line 88
    const-string v4, "lenovo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const-string v4, "SystemThemeResource"

    const-string v5, "SystemThemeResource: set to default lenovo theme"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 94
    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 95
    iput-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 125
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v4, "SystemThemeResource"

    const-string v5, "Start create SystemThemeResource"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, "startTime":J
    invoke-virtual {p0, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    .local v3, "themeRes":Landroid/content/res/Resources;
    if-nez v3, :cond_1

    .line 109
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to createThemeResource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/lenovo/systemtheme/SystemThemeResource;->initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    .line 117
    iput-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemePackageName:Ljava/lang/String;

    .line 118
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    .line 122
    :cond_2
    const-string v4, "SystemThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End create SystemThemeResource in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms. mResourceReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMappedLenovoBackgroundResourceId(I)I
    .locals 2
    .param p0, "resid"    # I

    .prologue
    .line 207
    move v0, p0

    .line 216
    .local v0, "newRes":I
    invoke-static {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isFrameworkResourceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    .end local p0    # "resid":I
    :goto_0
    return p0

    .restart local p0    # "resid":I
    :cond_0
    move p0, v0

    goto :goto_0
.end method

.method public static getMappedLenovoImageResourceId(I)I
    .locals 2
    .param p0, "resid"    # I

    .prologue
    .line 323
    move v0, p0

    .line 332
    .local v0, "newRes":I
    invoke-static {p0}, Lcom/lenovo/systemtheme/SystemThemeResource;->isFrameworkResourceId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    .end local p0    # "resid":I
    :goto_0
    return p0

    .restart local p0    # "resid":I
    :cond_0
    move p0, v0

    goto :goto_0
.end method

.method public static isFrameworkResourceId(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 437
    const/high16 v0, 0x1000000

    if-lt p0, v0, :cond_0

    const v0, 0x1ffffff

    if-gt p0, v0, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLenovoResourceId(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 450
    const/high16 v0, 0x3000000

    if-lt p0, v0, :cond_0

    const v0, 0x3ffffff

    if-gt p0, v0, :cond_0

    .line 451
    const/4 v0, 0x1

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThemeResourceId(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 424
    const/high16 v0, 0x5000000

    if-lt p0, v0, :cond_0

    const v0, 0x5ffffff

    if-gt p0, v0, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetSystemThemeToLenovoDefault()V
    .locals 3

    .prologue
    .line 463
    const-string v1, "lenovo"

    invoke-static {v1}, Lcom/lenovo/ideaui/hook/IdeaUI_HookConfiguration;->setSystemThemePackageName(Ljava/lang/String;)V

    .line 466
    const-string v1, "lenovo"

    invoke-static {}, Lcom/lenovo/ideaui/hook/IdeaUI_HookConfiguration;->getSystemThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const-string v1, "SystemThemeResource"

    const-string v2, "resetSystemThemeToDefault success"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 470
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "SystemThemeResource"

    const-string v2, "resetSystemThemeToDefault fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 477
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2
    .param p1, "themePackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    .local v0, "Pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getLenovoColorResourceId(I)I
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 184
    move v0, p1

    .line 187
    .local v0, "newRes":I
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, p1

    .line 197
    .end local v0    # "newRes":I
    :cond_1
    return v0
.end method

.method public getThemeResourceId(I)I
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 374
    iget-boolean v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mResourceReady:Z

    if-nez v1, :cond_1

    .line 385
    .end local p1    # "resid":I
    :cond_0
    :goto_0
    return p1

    .line 378
    .restart local p1    # "resid":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 380
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public final initId2Themeid(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 6
    .param p1, "themeRes"    # Landroid/content/res/Resources;
    .param p2, "themePackageName"    # Ljava/lang/String;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const/4 v3, 0x0

    .line 175
    :goto_0
    return v3

    .line 153
    :cond_0
    const-string v3, "SystemThemeResource"

    const-string v4, "initId2Themeid start "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v3, "system_theme"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 158
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-static {v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v2

    .line 160
    .local v2, "service":Lcom/lenovo/systemtheme/ISystemThemeService;
    if-eqz v2, :cond_2

    .line 161
    invoke-interface {v2, p2}, Lcom/lenovo/systemtheme/ISystemThemeService;->getThemeIdMap(Ljava/lang/String;)Lcom/lenovo/systemtheme/ThemeHashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2    # "service":Lcom/lenovo/systemtheme/ISystemThemeService;
    :goto_1
    iget-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    if-nez v3, :cond_1

    .line 170
    new-instance v3, Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-direct {v3}, Lcom/lenovo/systemtheme/ThemeHashMap;-><init>()V

    iput-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    .line 173
    :cond_1
    const-string v3, "SystemThemeResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initId2Themeid end. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mId2ThemeIdMap:Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v3, 0x1

    goto :goto_0

    .line 163
    .restart local v2    # "service":Lcom/lenovo/systemtheme/ISystemThemeService;
    :cond_2
    :try_start_1
    const-string v3, "SystemThemeResource"

    const-string v4, "initId2Themeid: system theme service not ready!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 165
    .end local v2    # "service":Lcom/lenovo/systemtheme/ISystemThemeService;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public updateSystemThemeConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/lenovo/systemtheme/SystemThemeResource;->mThemeResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 493
    :cond_0
    return-void
.end method
