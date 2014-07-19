.class Lcom/lenovo/lsf/account/PsLoginActivity$4$1;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 775
    const-string v0, "do"

    const-string v1, "1==========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 779
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$402(Lcom/lenovo/lsf/account/PsLoginActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 783
    return-void
.end method
