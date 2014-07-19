.class Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;
.super Ljava/lang/Thread;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ForgetPasswordActivity;->refreshVerifyImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$802(Lcom/lenovo/lsf/account/ForgetPasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$800(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsCaptServerToolkit;->captGetImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, "pic":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    new-instance v2, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;-><init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method
