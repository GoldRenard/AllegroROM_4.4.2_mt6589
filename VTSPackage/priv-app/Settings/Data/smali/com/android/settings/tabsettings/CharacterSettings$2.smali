.class Lcom/android/settings/tabsettings/CharacterSettings$2;
.super Landroid/database/ContentObserver;
.source "CharacterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/CharacterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CharacterSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CharacterSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/tabsettings/CharacterSettings$2;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    const-string v3, "CharacterSettings"

    const-string v4, "WideTouchValue onChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/tabsettings/CharacterSettings$2;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    # getter for: Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;
    invoke-static {v3}, Lcom/android/settings/tabsettings/CharacterSettings;->access$300(Lcom/android/settings/tabsettings/CharacterSettings;)Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tabsettings/CharacterSettings$2;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/tabsettings/CharacterSettings;->access$200(Lcom/android/settings/tabsettings/CharacterSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "total_wide_touch"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 135
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterSettings$2;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    # getter for: Lcom/android/settings/tabsettings/CharacterSettings;->mWideTouch:Lcom/android/settings/tabsettings/EnhanceSwitchPreference;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CharacterSettings;->access$300(Lcom/android/settings/tabsettings/CharacterSettings;)Lcom/android/settings/tabsettings/EnhanceSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method
