.class Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;
.super Landroid/os/Handler;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/ChangePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;Lcom/lenovo/lsf/account/ChangePasswordActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;
    .param p2, "x1"    # Lcom/lenovo/lsf/account/ChangePasswordActivity$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->topHeight:I
    invoke-static {v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$300(Lcom/lenovo/lsf/account/ChangePasswordActivity;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # invokes: Lcom/lenovo/lsf/account/ChangePasswordActivity;->getTopHeight()I
    invoke-static {v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$400(Lcom/lenovo/lsf/account/ChangePasswordActivity;)I

    move-result v2

    # setter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->topHeight:I
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$302(Lcom/lenovo/lsf/account/ChangePasswordActivity;I)I

    .line 131
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 132
    .local v0, "loc":[I
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$600(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->chageScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$900(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->topHeight:I
    invoke-static {v4}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$300(Lcom/lenovo/lsf/account/ChangePasswordActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$800(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$700(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 131
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
