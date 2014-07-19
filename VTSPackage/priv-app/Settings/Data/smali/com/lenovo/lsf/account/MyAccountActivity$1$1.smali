.class Lcom/lenovo/lsf/account/MyAccountActivity$1$1;
.super Ljava/lang/Thread;
.source "MyAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/MyAccountActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/MyAccountActivity$1;

.field final synthetic val$handler:Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/MyAccountActivity$1;Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;Landroid/app/ProgressDialog;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->this$1:Lcom/lenovo/lsf/account/MyAccountActivity$1;

    iput-object p2, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->val$handler:Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;

    iput-object p3, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->val$progress:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 293
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->this$1:Lcom/lenovo/lsf/account/MyAccountActivity$1;

    iget-object v1, v1, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->logout(Landroid/content/Context;)I

    .line 295
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->this$1:Lcom/lenovo/lsf/account/MyAccountActivity$1;

    iget-object v1, v1, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->mDeadFlag:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$500(Lcom/lenovo/lsf/account/MyAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-boolean v0, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    .line 300
    .local v0, "isLoginouting":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 301
    sget-boolean v0, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    goto :goto_1

    .line 304
    :cond_1
    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutTimeout:Z
    invoke-static {}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$600()Z

    move-result v1

    if-nez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->val$handler:Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 309
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_logout"

    const-string v3, "clk_logout_r_s"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->val$toast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->this$1:Lcom/lenovo/lsf/account/MyAccountActivity$1;

    iget-object v2, v2, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->this$1:Lcom/lenovo/lsf/account/MyAccountActivity$1;

    iget-object v3, v3, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v4, "string"

    const-string v5, "lenovouser_userinfo_logouts"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 314
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;->this$1:Lcom/lenovo/lsf/account/MyAccountActivity$1;

    iget-object v1, v1, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
