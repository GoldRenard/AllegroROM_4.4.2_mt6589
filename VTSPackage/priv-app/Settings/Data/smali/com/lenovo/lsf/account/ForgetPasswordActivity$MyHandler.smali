.class Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;
.super Landroid/os/Handler;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/ForgetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;Lcom/lenovo/lsf/account/ForgetPasswordActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;
    .param p2, "x1"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 125
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->topHeight:I
    invoke-static {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$300(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->getTopHeight()I
    invoke-static {v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$400(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)I

    move-result v2

    # setter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->topHeight:I
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$302(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)I

    .line 130
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 131
    .local v0, "loc":[I
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->forgetScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$700(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->topHeight:I
    invoke-static {v4}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$300(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$600(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 130
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
