.class Lcom/android/incallui/GlowPadWrapper$1;
.super Landroid/os/Handler;
.source "GlowPadWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/GlowPadWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/GlowPadWrapper;


# direct methods
.method constructor <init>(Lcom/android/incallui/GlowPadWrapper;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/incallui/GlowPadWrapper$1;->this$0:Lcom/android/incallui/GlowPadWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper$1;->this$0:Lcom/android/incallui/GlowPadWrapper;

    # invokes: Lcom/android/incallui/GlowPadWrapper;->triggerPing()V
    invoke-static {v0}, Lcom/android/incallui/GlowPadWrapper;->access$000(Lcom/android/incallui/GlowPadWrapper;)V

    .line 47
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper$1;->this$0:Lcom/android/incallui/GlowPadWrapper;

    # operator++ for: Lcom/android/incallui/GlowPadWrapper;->mCountPing:I
    invoke-static {v0}, Lcom/android/incallui/GlowPadWrapper;->access$108(Lcom/android/incallui/GlowPadWrapper;)I

    .line 48
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper$1;->this$0:Lcom/android/incallui/GlowPadWrapper;

    # getter for: Lcom/android/incallui/GlowPadWrapper;->mCountPing:I
    invoke-static {v0}, Lcom/android/incallui/GlowPadWrapper;->access$100(Lcom/android/incallui/GlowPadWrapper;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper$1;->this$0:Lcom/android/incallui/GlowPadWrapper;

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper$1;->this$0:Lcom/android/incallui/GlowPadWrapper;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "RESET_MESSAGE_WHAT"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper$1;->this$0:Lcom/android/incallui/GlowPadWrapper;

    # invokes: Lcom/android/incallui/GlowPadWrapper;->resetTargetDrawable()V
    invoke-static {v0}, Lcom/android/incallui/GlowPadWrapper;->access$200(Lcom/android/incallui/GlowPadWrapper;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
