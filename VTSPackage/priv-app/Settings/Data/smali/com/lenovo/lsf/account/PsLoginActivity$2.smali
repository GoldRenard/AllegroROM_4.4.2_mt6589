.class Lcom/lenovo/lsf/account/PsLoginActivity$2;
.super Landroid/os/AsyncTask;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->startThirdLoginProcess(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$2;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 676
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity$2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 680
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 681
    .local v0, "rid":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$2;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-static {v1, v0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 676
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$2;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$2;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$2;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$2;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->finishLogin(ZLjava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$500(Lcom/lenovo/lsf/account/PsLoginActivity;ZLjava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$2;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isThirdLogining:Z
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$602(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    .line 690
    return-void
.end method
