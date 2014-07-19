.class Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;
.super Landroid/os/AsyncTask;
.source "MyAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/MyAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Getverificationstatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/MyAccountActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/account/MyAccountActivity;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/account/MyAccountActivity;Lcom/lenovo/lsf/account/MyAccountActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/lsf/account/MyAccountActivity;
    .param p2, "x1"    # Lcom/lenovo/lsf/account/MyAccountActivity$1;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;-><init>(Lcom/lenovo/lsf/account/MyAccountActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getverificationstatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 239
    const-string v1, "MyAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getverificationstatus result == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-nez p1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$100(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v3, "string"

    const-string v4, "myaccount_string_statusinfo_not_verify"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 262
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "USS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$200(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$100(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v3, "string"

    const-string v4, "myaccount_string_statusinfo_getting_error"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 251
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$100(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v3, "string"

    const-string v4, "myaccount_string_statusinfo_not_verify"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$200(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$200(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_2
    if-ne v0, v5, :cond_3

    .line 255
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$100(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v3, "string"

    const-string v4, "myaccount_string_statusinfo_verified"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v2, "verificationstatus"

    iget-object v3, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # invokes: Lcom/lenovo/lsf/account/MyAccountActivity;->getAccountName()Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$300(Lcom/lenovo/lsf/account/MyAccountActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$200(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$100(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v3, "string"

    const-string v4, "myaccount_string_statusinfo_getting_error"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$100(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    const-string v2, "string"

    const-string v3, "myaccount_string_statusinfo_getting"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    # getter for: Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$200(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void
.end method
