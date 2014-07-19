.class Lcom/android/settings/tabsettings/CommonSettings$3;
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
    .line 295
    iput-object p1, p0, Lcom/android/settings/tabsettings/CommonSettings$3;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 298
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "A850"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.launcher.action.THEME_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "shortIntent":Landroid/content/Intent;
    const-string v1, "EXTRA"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$3;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 309
    :goto_0
    return v3

    .line 303
    .end local v0    # "shortIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 304
    .restart local v0    # "shortIntent":Landroid/content/Intent;
    const-string v1, "com.lenovo.themecenter"

    const-string v2, "com.lenovo.themecenter.ThemeCenterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v1, "invoke_external"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$3;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
