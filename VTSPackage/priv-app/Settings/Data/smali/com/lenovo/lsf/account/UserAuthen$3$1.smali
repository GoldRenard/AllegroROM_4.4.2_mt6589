.class Lcom/lenovo/lsf/account/UserAuthen$3$1;
.super Ljava/lang/Object;
.source "UserAuthen.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/UserAuthen$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/UserAuthen$3;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/UserAuthen$3;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/lenovo/lsf/account/UserAuthen$3$1;->this$0:Lcom/lenovo/lsf/account/UserAuthen$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .param p1, "amf"    # Landroid/accounts/AccountManagerFuture;

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 331
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 332
    const-string v4, "errorCode"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "errorCode":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 336
    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/UserAuthen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    const-string v4, "errorMessage"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/UserAuthen;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .end local v3    # "errorCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 340
    .restart local v3    # "errorCode":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/UserAuthen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    const-string v4, "errorMessage"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/UserAuthen;->access$302(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 344
    .end local v3    # "errorCode":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 346
    :catch_1
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_0
.end method
