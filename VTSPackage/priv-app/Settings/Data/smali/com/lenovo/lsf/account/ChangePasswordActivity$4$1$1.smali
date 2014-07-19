.class Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1$1;
.super Ljava/lang/Thread;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1$1;->this$2:Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 400
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v2

    const-string v3, "LenovoUser"

    const-string v4, "UserName"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "name":Ljava/lang/String;
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v2

    const-string v3, "LenovoUser"

    const-string v4, "Password"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "passwd":Ljava/lang/String;
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->RefreshTgt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 403
    return-void
.end method
