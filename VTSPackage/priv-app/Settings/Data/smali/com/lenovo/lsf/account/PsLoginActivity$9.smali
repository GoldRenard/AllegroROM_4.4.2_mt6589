.class Lcom/lenovo/lsf/account/PsLoginActivity$9;
.super Ljava/lang/Thread;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->refreshVerifyImage()V
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
    .line 1220
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

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

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2102(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1223
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2100(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsCaptServerToolkit;->captGetImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1225
    .local v0, "pic":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v2, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$9;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1242
    return-void
.end method
