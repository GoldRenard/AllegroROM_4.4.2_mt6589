.class Lcom/android/settings/tabsettings/CharacterSettings$4;
.super Ljava/lang/Object;
.source "CharacterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/CharacterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CharacterSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CharacterSettings;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings/tabsettings/CharacterSettings$4;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.lenovosmartscene"

    const-string v2, "com.lenovo.lenovosmartscene.SmartSceneActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterSettings$4;->this$0:Lcom/android/settings/tabsettings/CharacterSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 276
    const/4 v1, 0x1

    return v1
.end method
