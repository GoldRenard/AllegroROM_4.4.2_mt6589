.class Lcom/lenovo/lsf/account/PsLoginActivity$1;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$1;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardStateChange(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$1;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 243
    .local v0, "newOrientation":I
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$1;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oldOrientation:I
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$000(Lcom/lenovo/lsf/account/PsLoginActivity;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 244
    packed-switch p1, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$1;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oldOrientation:I
    invoke-static {v1, v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$002(Lcom/lenovo/lsf/account/PsLoginActivity;I)I

    .line 252
    return-void

    .line 248
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$1;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$100(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    move-result-object v1

    const/4 v2, 0x5

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
