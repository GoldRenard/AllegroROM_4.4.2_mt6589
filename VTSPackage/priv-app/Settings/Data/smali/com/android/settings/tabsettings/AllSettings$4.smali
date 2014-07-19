.class Lcom/android/settings/tabsettings/AllSettings$4;
.super Ljava/lang/Object;
.source "AllSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/AllSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/AllSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/AllSettings;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/tabsettings/AllSettings$4;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$4;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    invoke-virtual {v0}, Lcom/android/settings/tabsettings/AllSettings;->invalidateHeaders()V

    .line 351
    const-string v0, "hanlhAllSettings"

    const-string v1, "onSharedPreferenceChanged hanlh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method
