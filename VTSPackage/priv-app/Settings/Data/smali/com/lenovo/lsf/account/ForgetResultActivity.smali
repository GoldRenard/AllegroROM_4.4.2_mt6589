.class public Lcom/lenovo/lsf/account/ForgetResultActivity;
.super Landroid/app/Activity;
.source "ForgetResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private account:Ljava/lang/String;

.field private isBinding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->isBinding:Z

    return-void
.end method

.method private createFailView()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method private createSuccessView()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 72
    const-string v4, "id"

    const-string v5, "forgetsuccess_string_detail"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    .local v3, "accounttype":Landroid/widget/TextView;
    const-string v4, "id"

    const-string v5, "forgetsuccess_text_account"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "accountinfo":Landroid/widget/TextView;
    const-string v4, "id"

    const-string v5, "forgetsuccess_button_check"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    .local v0, "Check":Landroid/widget/Button;
    const-string v4, "id"

    const-string v5, "forgetsuccess_button_login"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 77
    .local v1, "Login":Landroid/widget/Button;
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "forgetsuccess_string_detail"

    invoke-static {p0, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "string"

    const-string v8, "forgetsuccess_string_mailbox"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    const-string v4, "string"

    const-string v5, "forgetsuccess_string_checkmail"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "forgetsuccess_string_detail"

    invoke-static {p0, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "string"

    const-string v8, "forgetsuccess_string_phone"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_1
    const-string v4, "string"

    const-string v5, "forgetsuccess_string_checksms"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "find"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    .line 57
    const-string v1, "layout"

    const-string v2, "forgetfail"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetResultActivity;->createFailView()V

    .line 64
    :goto_0
    const-string v1, "isBinding"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->isBinding:Z

    .line 65
    return-void

    .line 60
    :cond_0
    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    .line 61
    const-string v1, "layout"

    const-string v2, "forgetsuccess"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetResultActivity;->createSuccessView()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 98
    .local v2, "id":I
    const-string v6, "id"

    const-string v7, "forgetsuccess_button_check"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_2

    .line 99
    iget-object v6, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "url":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://mail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 104
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "url":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "string"

    const-string v7, "open_browser_error"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "content://mms-sms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 115
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 116
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "string"

    const-string v7, "open_sms_error"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "id"

    const-string v7, "forgetsuccess_button_login"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 120
    iget-boolean v6, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->isBinding:Z

    if-eqz v6, :cond_3

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "data":Landroid/content/Intent;
    const-string v6, "username"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 126
    .end local v0    # "data":Landroid/content/Intent;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "username"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/lsf/account/ForgetResultActivity;->account:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v6, "fromFindPassword"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x7

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 31
    const-string v0, "layout"

    const-string v1, "change"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "title"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 33
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetResultActivity;->initViews()V

    .line 35
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 43
    return-void
.end method
