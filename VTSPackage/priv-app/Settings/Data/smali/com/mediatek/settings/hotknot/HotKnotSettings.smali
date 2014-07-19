.class public Lcom/mediatek/settings/hotknot/HotKnotSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HotKnotSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HotKnotSettings"


# instance fields
.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field private mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings$1;-><init>(Lcom/mediatek/settings/hotknot/HotKnotSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 51
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x207000b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 53
    .local v1, "mActionBarSwitch":Landroid/widget/Switch;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 55
    .local v2, "padding":I
    invoke-virtual {v1, v6, v6, v2, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090315

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 65
    invoke-static {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 66
    iget-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v3, :cond_0

    .line 67
    const-string v3, "HotKnotSettings"

    const-string v4, "Hotknot adapter is null, finish Hotknot settings"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 70
    :cond_0
    new-instance v3, Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-direct {v3, v0, v1}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v1, 0x7f04005f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->pause()V

    .line 102
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->resume()V

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method
