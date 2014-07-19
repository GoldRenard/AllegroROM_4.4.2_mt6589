.class final Lcom/lenovo/lsf/account/UserAuthen$3;
.super Ljava/lang/Thread;
.source "UserAuthen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/UserAuthen;->ssoLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$rid:Ljava/lang/String;

.field final synthetic val$tgtData:Ljava/lang/String;

.field final synthetic val$tgtExpiredTime:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$tgtData:Ljava/lang/String;

    iput-object p6, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$tgtExpiredTime:Ljava/lang/String;

    iput-object p7, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$rid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 316
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v5, "loginOption":Landroid/os/Bundle;
    const-string v0, "source"

    iget-object v1, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "userId"

    iget-object v1, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$userId:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "username"

    iget-object v1, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$username:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "password"

    iget-object v1, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$password:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "tgtData"

    iget-object v1, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$tgtData:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "tgtExpiredTime"

    iget-object v1, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$tgtExpiredTime:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.lenovo.lsf.account"

    iget-object v2, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$rid:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/lsf/account/UserAuthen$3;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v7, Lcom/lenovo/lsf/account/UserAuthen$3$1;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/UserAuthen$3$1;-><init>(Lcom/lenovo/lsf/account/UserAuthen$3;)V

    const/4 v8, 0x0

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v5    # "loginOption":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v9

    .line 352
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
