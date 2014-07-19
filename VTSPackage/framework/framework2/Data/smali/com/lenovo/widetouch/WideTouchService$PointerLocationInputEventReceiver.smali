.class final Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerLocationInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method public constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    .line 105
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 112
    .local v3, "handled":Z
    :try_start_0
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 114
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 117
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v7, v7, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 120
    .local v1, "action":I
    const/16 v7, 0xc

    if-ne v1, v7, :cond_0

    .line 121
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 122
    .local v5, "x":I
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    float-to-int v6, v7

    .line 125
    .local v6, "y":I
    :try_start_1
    iget-object v7, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    # invokes: Lcom/lenovo/widetouch/WideTouchService;->hideStatusBar()V
    invoke-static {v7}, Lcom/lenovo/widetouch/WideTouchService;->access$200(Lcom/lenovo/widetouch/WideTouchService;)V

    .line 126
    iget-object v7, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v7, v7, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    invoke-interface {v7, v5, v6}, Lcom/lenovo/widetouch/ITouchWindowServiceBinder;->scheduleShowTouchWindowByWideTouch(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v1    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 135
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 137
    return-void

    .line 127
    .restart local v1    # "action":I
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v1    # "action":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "x":I
    .end local v6    # "y":I
    :catchall_0
    move-exception v7

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v7
.end method
