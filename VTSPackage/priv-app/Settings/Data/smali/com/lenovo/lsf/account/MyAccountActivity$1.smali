.class Lcom/lenovo/lsf/account/MyAccountActivity$1;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/MyAccountActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/MyAccountActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/MyAccountActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 276
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const/4 v5, 0x5

    const-string v6, "SPECIAL_TOKEN"

    const-string v7, "QJFOKY5F65WI"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_logout"

    const-string v6, "clk_logout"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    iget-object v4, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v6, "string"

    const-string v7, "lenovouser_userinfo_logouting"

    invoke-static {v5, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {v2, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 282
    .local v2, "progress":Landroid/app/ProgressDialog;
    iget-object v4, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-static {v4, v2, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v5, ""

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 288
    .local v3, "toast":Landroid/widget/Toast;
    new-instance v0, Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;

    iget-object v4, p0, Lcom/lenovo/lsf/account/MyAccountActivity$1;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {v0, v4, v9}, Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/MyAccountActivity;Lcom/lenovo/lsf/account/MyAccountActivity$1;)V

    .line 289
    .local v0, "handler":Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;
    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v0, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    new-instance v4, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/lenovo/lsf/account/MyAccountActivity$1$1;-><init>(Lcom/lenovo/lsf/account/MyAccountActivity$1;Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;Landroid/app/ProgressDialog;Landroid/widget/Toast;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 317
    return-void
.end method
