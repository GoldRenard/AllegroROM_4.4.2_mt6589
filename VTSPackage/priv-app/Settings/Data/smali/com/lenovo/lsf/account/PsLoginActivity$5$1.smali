.class Lcom/lenovo/lsf/account/PsLoginActivity$5$1;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iput-object p2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 976
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_login_error7"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 981
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1900(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0101"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 983
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-static {v1}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->isSimReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 985
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "login_password_error"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 989
    :goto_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPasswordEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2000(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 987
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_login_error2"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    goto :goto_1

    .line 990
    .end local v0    # "lang":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0103"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 991
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_login_error1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 992
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1900(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 993
    :cond_4
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0151"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 994
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_login_error6"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    goto/16 :goto_0

    .line 995
    :cond_5
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 996
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_login_error8"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    goto/16 :goto_0

    .line 997
    :cond_6
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0105"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 998
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_login_error3"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 999
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 1000
    :cond_7
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1001
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v2, v2, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "lenovouser_onekey_imeiinvalid"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1007
    :cond_8
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    const-string v2, "USS-0999"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1008
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iput-boolean v6, v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mRequestNewAccount:Z

    .line 1009
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v2, v2, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "psauthen_text20"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1015
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->val$data:Ljava/lang/String;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->finishLogin(ZLjava/lang/String;)V
    invoke-static {v1, v7, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$500(Lcom/lenovo/lsf/account/PsLoginActivity;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1017
    :cond_9
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$5;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0
.end method
