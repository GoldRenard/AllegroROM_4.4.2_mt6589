.class Lcom/lenovo/lsf/account/ChangePasswordActivity$2;
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
    .line 316
    iput-object p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 319
    return-void
.end method
