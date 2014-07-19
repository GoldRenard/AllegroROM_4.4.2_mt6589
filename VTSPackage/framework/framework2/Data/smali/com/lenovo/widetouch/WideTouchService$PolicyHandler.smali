.class Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;
.super Landroid/os/Handler;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method private constructor <init>(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/widetouch/WideTouchService;
    .param p2, "x1"    # Lcom/lenovo/widetouch/WideTouchService$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;-><init>(Lcom/lenovo/widetouch/WideTouchService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    # invokes: Lcom/lenovo/widetouch/WideTouchService;->enablePointerLocation()V
    invoke-static {v0}, Lcom/lenovo/widetouch/WideTouchService;->access$000(Lcom/lenovo/widetouch/WideTouchService;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    # invokes: Lcom/lenovo/widetouch/WideTouchService;->disablePointerLocation()V
    invoke-static {v0}, Lcom/lenovo/widetouch/WideTouchService;->access$100(Lcom/lenovo/widetouch/WideTouchService;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
