.class final Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;
.super Ljava/lang/Thread;
.source "OldPsAuthenServiceL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fcallback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

.field final synthetic val$fcontext:Landroid/content/Context;

.field final synthetic val$frid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$fcontext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$frid:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$fcallback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$fcontext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$frid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "st":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$fcontext:Landroid/content/Context;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->setErrorString(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$100(Landroid/content/Context;)V

    .line 206
    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$fcallback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    invoke-interface {v1, v3, v0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v1, ""

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$fcontext:Landroid/content/Context;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->setErrorString(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$100(Landroid/content/Context;)V

    .line 210
    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$1;->val$fcallback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_0
.end method
