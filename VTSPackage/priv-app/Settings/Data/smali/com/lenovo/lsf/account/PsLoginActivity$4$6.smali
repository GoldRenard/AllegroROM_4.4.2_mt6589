.class Lcom/lenovo/lsf/account/PsLoginActivity$4$6;
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
    .line 903
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 907
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$402(Lcom/lenovo/lsf/account/PsLoginActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 910
    :cond_0
    return-void
.end method
