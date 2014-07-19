.class Lcom/android/incallui/AnswerFragment$1;
.super Landroid/os/Handler;
.source "AnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    :pswitch_0
    return-void

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->slowMoveCallSlideWidgetBack()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$100(Lcom/android/incallui/AnswerFragment;)V

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->showAnimation()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$200(Lcom/android/incallui/AnswerFragment;)V

    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->playWaveAnim()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$300(Lcom/android/incallui/AnswerFragment;)V

    goto :goto_0

    .line 208
    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->stopCircleWaveAnim()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$400(Lcom/android/incallui/AnswerFragment;)V

    goto :goto_0

    .line 211
    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->resetCallSlide()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$500(Lcom/android/incallui/AnswerFragment;)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
