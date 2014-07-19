.class Lcom/lenovo/lsf/account/ChangePasswordActivity$3;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ChangePasswordActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1000(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1100(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lenovo/lsf/account/ChangePasswordActivity;->startChangeProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1200(Lcom/lenovo/lsf/account/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method
