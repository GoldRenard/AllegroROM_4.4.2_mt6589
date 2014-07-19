.class final Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;
.super Landroid/os/Handler;
.source "LightAdjustService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelaySetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/LightAdjustService;


# direct methods
.method private constructor <init>(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lightadjust/LightAdjustService;Lcom/android/server/lightadjust/LightAdjustService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p2, "x1"    # Lcom/android/server/lightadjust/LightAdjustService$1;

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;-><init>(Lcom/android/server/lightadjust/LightAdjustService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 745
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 746
    .local v0, "value":I
    const-string v1, "AUTOADJUST"

    const-string v2, "--Delay Time Out--"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 757
    :goto_0
    return-void

    .line 749
    :pswitch_0
    const-string v1, "AUTOADJUST"

    const-string v2, "--Enter Auto Mode!--"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeSetBrightness()V
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$2100(Lcom/android/server/lightadjust/LightAdjustService;)V

    goto :goto_0

    .line 753
    :pswitch_1
    const-string v1, "AUTOADJUST"

    const-string v2, "--Exit Auto Mode!--"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->exitAutoModeSetBrightness(I)V
    invoke-static {v1, v0}, Lcom/android/server/lightadjust/LightAdjustService;->access$2200(Lcom/android/server/lightadjust/LightAdjustService;I)V

    goto :goto_0

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
