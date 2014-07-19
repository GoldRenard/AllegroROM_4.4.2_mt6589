.class Lcom/lenovo/lsf/account/UserAuthen$2$1;
.super Ljava/lang/Object;
.source "UserAuthen.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/UserAuthen$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/UserAuthen$2;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/UserAuthen$2;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/lenovo/lsf/account/UserAuthen$2$1;->this$0:Lcom/lenovo/lsf/account/UserAuthen$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .param p1, "amf"    # Landroid/accounts/AccountManagerFuture;

    .prologue
    const/4 v8, 0x0

    .line 262
    const/4 v2, 0x0

    .line 265
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0

    .line 266
    const-string v5, "errorCode"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "errorCode":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/UserAuthen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    const-string v5, "errorMessage"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/UserAuthen;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    iget-object v5, p0, Lcom/lenovo/lsf/account/UserAuthen$2$1;->this$0:Lcom/lenovo/lsf/account/UserAuthen$2;

    iget-object v5, v5, Lcom/lenovo/lsf/account/UserAuthen$2;->val$callback:Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    .line 294
    .end local v4    # "errorCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 276
    .restart local v4    # "errorCode":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/UserAuthen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v5, "errorMessage"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/UserAuthen;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v5, p0, Lcom/lenovo/lsf/account/UserAuthen$2$1;->this$0:Lcom/lenovo/lsf/account/UserAuthen$2;

    iget-object v5, v5, Lcom/lenovo/lsf/account/UserAuthen$2;->val$callback:Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;

    const/4 v6, 0x1

    const-string v7, "authtoken"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;->onFinished(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 283
    .end local v4    # "errorCode":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 284
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    const-string v5, "cancel"

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/UserAuthen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    const-string v5, "\u7528\u6237\u53d6\u6d88"

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/UserAuthen;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    iget-object v5, p0, Lcom/lenovo/lsf/account/UserAuthen$2$1;->this$0:Lcom/lenovo/lsf/account/UserAuthen$2;

    iget-object v5, v5, Lcom/lenovo/lsf/account/UserAuthen$2;->val$callback:Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;

    # getter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/UserAuthen;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v3    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 288
    .local v1, "ae":Landroid/accounts/AuthenticatorException;
    const-string v5, "cancel"

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/UserAuthen;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    const-string v5, "\u7528\u6237\u53d6\u6d88"

    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/UserAuthen;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object v5, p0, Lcom/lenovo/lsf/account/UserAuthen$2$1;->this$0:Lcom/lenovo/lsf/account/UserAuthen$2;

    iget-object v5, v5, Lcom/lenovo/lsf/account/UserAuthen$2;->val$callback:Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;

    # getter for: Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/UserAuthen;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v1    # "ae":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v3

    .line 292
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
