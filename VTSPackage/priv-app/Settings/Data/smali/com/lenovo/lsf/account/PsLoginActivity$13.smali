.class Lcom/lenovo/lsf/account/PsLoginActivity$13;
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
    .line 1516
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$13;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1518
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$13;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_login_rprogess1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1521
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$13;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginResendProcess(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3500(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)V

    .line 1522
    return-void
.end method
