.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookConfiguration;
.super Ljava/lang/Object;
.source "IdeaUI_HookConfiguration.java"


# static fields
.field public static final LENOVO_DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String; = "lenovo"

.field public static final PERISIST_SYSTEM_THEME_PACKAGENAME:Ljava/lang/String; = "persist.sys.theme.package"

.field public static final PROJECT_DEFAULT_SYSTEM_THEME_PACKAGE_NAME:Ljava/lang/String; = "lenovo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemThemePackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    const-string v1, "persist.sys.theme.package"

    const-string v2, "lenovo"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public static setSystemThemePackageName(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "persist.sys.theme.package"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
