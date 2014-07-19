.class Lcom/android/settings/tabsettings/CharacterSettings$3;
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
    .line 148
    iput-object p1, p0, Lcom/android/settings/tabsettings/CharacterSettings$3;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 151
    const-string v1, "CharacterSettings"

    const-string v2, "mSmartRotationObserver onChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterSettings$3;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CharacterSettings;->access$400(Lcom/android/settings/tabsettings/CharacterSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_smart_rotation"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterSettings$3;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    # invokes: Lcom/android/settings/tabsettings/CharacterSettings;->updateSmartRotationPreference(I)V
    invoke-static {v1, v0}, Lcom/android/settings/tabsettings/CharacterSettings;->access$500(Lcom/android/settings/tabsettings/CharacterSettings;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "value":I
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0
.end method
