.class public Lcom/lenovo/lsf/account/PsUserSettingActivity;
.super Landroid/app/Activity;
.source "PsUserSettingActivity.java"


# static fields
.field private static rid:Ljava/lang/String;

.field private static source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/lenovo/lsf/account/PsUserSettingActivity;->rid:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/lenovo/lsf/account/PsUserSettingActivity;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 20
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lsf/account/PsUserSettingActivity;->rid:Ljava/lang/String;

    .line 23
    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lsf/account/PsUserSettingActivity;->source:Ljava/lang/String;

    .line 24
    sget-object v1, Lcom/lenovo/lsf/account/PsUserSettingActivity;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/lsf/account/ToolUtil;->setSource(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 55
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/high16 v6, 0x20000

    .line 29
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "SPECIAL_TOKEN"

    const-string v5, "QJFOKY5F65WI"

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 32
    const-string v2, "LenovoUser"

    const-string v3, "UserName"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "username":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "rid"

    sget-object v3, Lcom/lenovo/lsf/account/PsUserSettingActivity;->rid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    return-void

    .line 42
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "rid"

    sget-object v3, Lcom/lenovo/lsf/account/PsUserSettingActivity;->rid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
