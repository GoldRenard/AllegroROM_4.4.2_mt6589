.class Lcom/lenovo/lsf/account/AccountBindingActivity$1;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/AccountBindingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$1;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "View"    # Landroid/view/View;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$1;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$1;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$600(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->startBinding(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$700(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)V

    .line 454
    return-void
.end method
