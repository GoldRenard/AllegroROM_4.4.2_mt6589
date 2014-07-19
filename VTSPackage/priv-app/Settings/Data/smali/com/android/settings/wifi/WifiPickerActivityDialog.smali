.class public Lcom/android/settings/wifi/WifiPickerActivityDialog;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiPickerActivityDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiPickerActivityDialog$1;,
        Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;
    }
.end annotation


# instance fields
.field private wifiBr:Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 47
    .local v1, "padingButtom":I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerActivityDialog;->wifiBr:Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    iput-object v2, p0, Lcom/android/settings/wifi/WifiPickerActivityDialog;->wifiBr:Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;

    .line 58
    new-instance v1, Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;-><init>(Lcom/android/settings/wifi/WifiPickerActivityDialog;Lcom/android/settings/wifi/WifiPickerActivityDialog$1;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiPickerActivityDialog;->wifiBr:Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPickerActivityDialog;->wifiBr:Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method
