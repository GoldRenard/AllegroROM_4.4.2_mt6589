.class Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;
.super Landroid/os/Handler;
.source "MyAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/MyAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/MyAccountActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/account/MyAccountActivity;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/account/MyAccountActivity;Lcom/lenovo/lsf/account/MyAccountActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/lsf/account/MyAccountActivity;
    .param p2, "x1"    # Lcom/lenovo/lsf/account/MyAccountActivity$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/MyAccountActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 328
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 331
    :pswitch_0
    const-string v0, "MyAccountActivity"

    const-string v1, "  logout time out "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->isLogoutting:Z

    .line 333
    # setter for: Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutTimeout:Z
    invoke-static {v4}, Lcom/lenovo/lsf/account/MyAccountActivity;->access$602(Z)Z

    .line 334
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_logout"

    const-string v2, "clk_logout_r_timeout"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 337
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
