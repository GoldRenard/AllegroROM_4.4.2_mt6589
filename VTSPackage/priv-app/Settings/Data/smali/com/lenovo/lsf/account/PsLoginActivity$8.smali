.class Lcom/lenovo/lsf/account/PsLoginActivity$8;
.super Ljava/lang/Thread;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->startRegisterResendProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1192
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1400(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getVerifyInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1194
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1200
    :cond_1
    if-nez v0, :cond_2

    .line 1202
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v2, Lcom/lenovo/lsf/account/PsLoginActivity$8$1;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$8$1;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$8;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1209
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v2, Lcom/lenovo/lsf/account/PsLoginActivity$8$2;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$8$2;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$8;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
