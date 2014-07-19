.class Lcom/lenovo/lsf/account/PsLoginActivity$18;
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
    .line 1624
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$18;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1626
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$18;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 1627
    return-void
.end method
