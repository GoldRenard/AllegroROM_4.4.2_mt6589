.class Lcom/lenovo/lsf/account/PsLoginActivity$19;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1636
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$19;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1638
    const-string v0, "do"

    const-string v1, "===================---------------------=====================----------------------------====================-----------------===================-"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$19;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->startOneKeyRegisterProgress()V
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3800(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    .line 1640
    return-void
.end method
