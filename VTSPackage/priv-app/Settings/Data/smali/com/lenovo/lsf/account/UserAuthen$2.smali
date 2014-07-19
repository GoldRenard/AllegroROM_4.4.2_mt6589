.class final Lcom/lenovo/lsf/account/UserAuthen$2;
.super Ljava/lang/Thread;
.source "UserAuthen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flag:Z

.field final synthetic val$loginOption:Landroid/os/Bundle;

.field final synthetic val$rid:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;)V
    .locals 0

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$flag:Z

    iput-object p2, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$rid:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$loginOption:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$callback:Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$flag:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$rid:Ljava/lang/String;

    # invokes: Lcom/lenovo/lsf/account/UserAuthen;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/UserAuthen;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$loginOption:Landroid/os/Bundle;

    const-string v1, "androidPackageName"

    iget-object v2, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$loginOption:Landroid/os/Bundle;

    const-string v1, "source"

    iget-object v2, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lsf/account/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$loginOption:Landroid/os/Bundle;

    const-string v1, "get_st_no_from_catche"

    iget-boolean v2, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    iget-object v0, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.lenovo.lsf.account"

    iget-object v2, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$rid:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$loginOption:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/lenovo/lsf/account/UserAuthen$2;->val$loginOption:Landroid/os/Bundle;

    new-instance v7, Lcom/lenovo/lsf/account/UserAuthen$2$1;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/UserAuthen$2$1;-><init>(Lcom/lenovo/lsf/account/UserAuthen$2;)V

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v9

    .line 297
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
