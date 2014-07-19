.class Lcom/android/settings/tabsettings/CommonSettings$4;
.super Ljava/lang/Object;
.source "CommonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/CommonSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CommonSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CommonSettings;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings/tabsettings/CommonSettings$4;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$4;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # invokes: Lcom/android/settings/tabsettings/CommonSettings;->hasProperThemeCenter()Z
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$200(Lcom/android/settings/tabsettings/CommonSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.themecenter.action.wallpaperex"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$4;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 326
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 322
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WallpaperTypeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$4;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
