.class final Lcom/lenovo/lsf/account/PsAuthenServiceL$6;
.super Ljava/lang/Object;
.source "PsAuthenServiceL.java"

# interfaces
.implements Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;->val$callback:Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 4
    .param p1, "ret"    # Z
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;->val$context:Landroid/content/Context;

    const-string v2, "DataCache"

    const-string v3, "autoOnekeyLogin"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "hasAutoOneKeyLogin":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;->val$context:Landroid/content/Context;

    const-string v2, "LenovoUser"

    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->delAllValue(Landroid/content/Context;Ljava/lang/String;)Z

    .line 238
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsPushUserData;->delAllStValue(Landroid/content/Context;)Z

    .line 241
    .end local v0    # "hasAutoOneKeyLogin":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;->val$callback:Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    .line 242
    const/4 v1, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsAuthenServiceL;->flag_onekey_login:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->access$002(Z)Z

    .line 243
    return-void
.end method
