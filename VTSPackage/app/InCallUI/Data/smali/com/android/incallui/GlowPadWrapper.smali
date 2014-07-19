.class public Lcom/android/incallui/GlowPadWrapper;
.super Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.source "GlowPadWrapper.java"

# interfaces
.implements Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/GlowPadWrapper$AnswerListener;
    }
.end annotation


# static fields
.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field private static final PING_MESSAGE_WHAT:I = 0x65

.field private static final PING_REPEAT_DELAY_MS:J = 0x4b0L

.field private static final RESET_MESSAGE_WHAT:I = 0x66


# instance fields
.field private mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

.field private mCountPing:I

.field private mPingEnabled:Z

.field private final mPingHandler:Landroid/os/Handler;

.field private mTargetTriggered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/android/incallui/GlowPadWrapper;->mCountPing:I

    .line 40
    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v1, p0, Lcom/android/incallui/GlowPadWrapper;->mCountPing:I

    .line 40
    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/GlowPadWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/GlowPadWrapper;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/GlowPadWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/GlowPadWrapper;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/incallui/GlowPadWrapper;->mCountPing:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/incallui/GlowPadWrapper;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/GlowPadWrapper;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/incallui/GlowPadWrapper;->mCountPing:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/GlowPadWrapper;->mCountPing:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/GlowPadWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/GlowPadWrapper;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->resetTargetDrawable()V

    return-void
.end method

.method private resetTargetDrawable()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "resetTargetDrawable()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->resetHandleDrawablePosition()V

    .line 75
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    .line 76
    return-void
.end method

.method private triggerPing()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerPing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->ping()V

    .line 114
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "onFinishInflate()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 93
    invoke-virtual {p0, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 94
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 121
    const-string v0, "onGrabbed()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    .line 123
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 164
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 127
    const-string v0, "onReleased()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    const/4 v2, 0x1

    .line 140
    const-string v1, "onTrigger()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 142
    .local v0, "resId":I
    sparse-switch v0, :sswitch_data_0

    .line 157
    const-string v1, "Trigger detected on unhandled resource. Skipping."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 144
    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-interface {v1}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onAnswer()V

    .line 145
    iput-boolean v2, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 148
    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-interface {v1}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onDecline()V

    .line 149
    iput-boolean v2, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 152
    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-interface {v1}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onText()V

    .line 153
    iput-boolean v2, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020070 -> :sswitch_0
        0x7f020075 -> :sswitch_1
        0x7f02007d -> :sswitch_2
    .end sparse-switch
.end method

.method public setAnswerListener(Lcom/android/incallui/GlowPadWrapper$AnswerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    .line 173
    return-void
.end method

.method public startPing()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "startPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 99
    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    .line 100
    return-void
.end method

.method public stopPing()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "stopPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 105
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    return-void
.end method
