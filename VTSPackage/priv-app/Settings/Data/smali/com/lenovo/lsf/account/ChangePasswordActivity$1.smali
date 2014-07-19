.class Lcom/lenovo/lsf/account/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ChangePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$1;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardStateChange(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 92
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$1;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 93
    .local v0, "newOrientation":I
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$1;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->oldOrientation:I
    invoke-static {v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$100(Lcom/lenovo/lsf/account/ChangePasswordActivity;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$1;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # setter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->oldOrientation:I
    invoke-static {v1, v0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$102(Lcom/lenovo/lsf/account/ChangePasswordActivity;I)I

    .line 102
    return-void

    .line 98
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$1;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->mHandler:Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$200(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
