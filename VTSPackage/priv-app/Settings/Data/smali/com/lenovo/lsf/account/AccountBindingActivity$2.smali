.class Lcom/lenovo/lsf/account/AccountBindingActivity$2;
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
    .line 468
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$2;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$2;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->startOneKeyAccountBindingProgress()V
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$800(Lcom/lenovo/lsf/account/AccountBindingActivity;)V

    .line 471
    return-void
.end method
