.class public Lcom/mediatek/gemini/SelectSimCardActivity;
.super Lcom/android/settings/SettingsMTK;
.source "SelectSimCardActivity.java"


# static fields
.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "SelectSimCardActivity"

.field private static final THEME_ID_EXTRA:Ljava/lang/String; = "Theme_resource_id"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/SettingsMTK;-><init>()V

    .line 18
    new-instance v0, Lcom/mediatek/gemini/SelectSimCardActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SelectSimCardActivity$1;-><init>(Lcom/mediatek/gemini/SelectSimCardActivity;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateTheme()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsMTK;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 47
    const-string v2, "Theme_resource_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 48
    .local v1, "theme":I
    const v2, 0x103012b

    if-ne v1, v2, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 52
    .end local v1    # "theme":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/mediatek/gemini/SelectSimCardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/gemini/SelectSimCardActivity;->updateTheme()V

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsMTK;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object v2, p0, Lcom/mediatek/gemini/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/SettingsMTK;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "title":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 38
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsMTK;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/mediatek/gemini/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 57
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
