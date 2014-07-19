.class public Lcom/lenovo/ideaui/IdeaUI;
.super Ljava/lang/Object;
.source "IdeaUI.java"


# static fields
.field public static final PLATFORM_IDEAUI_VERSION_KEY:Ljava/lang/String; = "sys.lenovo.ideaui.version.sdk"

.field private static mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

.field private static final sPlatform_ideaui_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "sys.lenovo.ideaui.version.sdk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/ideaui/IdeaUI;->sPlatform_ideaui_version:I

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getDataFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 141
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 143
    .local v0, "out":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget v2, v0, Landroid/util/TypedValue;->data:I

    .line 148
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFloatFromAttribute(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 123
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .local v0, "out":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 130
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getResFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 105
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 107
    .local v0, "out":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 112
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRomUIVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 58
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 60
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    if-nez v0, :cond_0

    .line 66
    const/4 v2, -0x1

    .line 76
    :goto_0
    return v2

    .line 69
    :cond_0
    const/high16 v3, 0x3010000

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 72
    .local v2, "version":I
    goto :goto_0

    .line 76
    .end local v2    # "version":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSystemThemeService()Lcom/lenovo/systemtheme/ISystemThemeService;
    .locals 2

    .prologue
    .line 156
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    .line 163
    .local v0, "binder":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 160
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    const-string v1, "system_theme"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 161
    .restart local v0    # "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/lenovo/systemtheme/ISystemThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/systemtheme/ISystemThemeService;

    move-result-object v1

    sput-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    .line 163
    sget-object v1, Lcom/lenovo/ideaui/IdeaUI;->mSystemThemeService:Lcom/lenovo/systemtheme/ISystemThemeService;

    goto :goto_0
.end method

.method public static isIdeaUITheme(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 31
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 35
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 38
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_0

    const/high16 v4, 0x3010000

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 42
    .local v2, "version":I
    if-lez v2, :cond_0

    .line 47
    .end local v2    # "version":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isPlatfromSupportIdeaUI()Z
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/lenovo/ideaui/IdeaUI;->sPlatform_ideaui_version:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportNonIdeaUITheme()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
