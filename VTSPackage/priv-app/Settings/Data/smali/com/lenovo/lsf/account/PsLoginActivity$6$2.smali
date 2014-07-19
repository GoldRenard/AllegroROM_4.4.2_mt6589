.class Lcom/lenovo/lsf/account/PsLoginActivity$6$2;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity$6;I)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iput p2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1117
    iget v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->val$ret:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_register_error1"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 1119
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterAccountEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1135
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->refreshVerifyImage()V
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2800(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    .line 1136
    iget v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->val$ret:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->onResume()V

    .line 1140
    :cond_0
    return-void

    .line 1120
    :cond_1
    iget v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->val$ret:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_2

    .line 1121
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_register_error2"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 1122
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterAccountEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1123
    :cond_2
    iget v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->val$ret:I

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_register_error3"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 1125
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2500(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1126
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2500(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordAgainEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2600(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1128
    :cond_3
    iget v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->val$ret:I

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_4

    .line 1129
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_register_error5"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    .line 1130
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 1132
    :cond_4
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$6;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0
.end method
