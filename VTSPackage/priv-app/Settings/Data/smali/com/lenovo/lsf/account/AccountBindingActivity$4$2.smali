.class Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/AccountBindingActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$4;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity$4;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 739
    return-void
.end method
