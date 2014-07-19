.class Lcom/lenovo/lsf/account/PsLoginActivity$9$1;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

.field final synthetic val$pic:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity$9;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iput-object p2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->val$pic:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1227
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->val$pic:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2900(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->val$pic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1229
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2900(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1230
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3000(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_register_error6"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->hideErrorMessage()V
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3100(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    .line 1239
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1240
    return-void

    .line 1235
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3200(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$9$1;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$9;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity$9;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_register_error6"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V

    goto :goto_0
.end method
