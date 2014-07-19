.class Lcom/android/incallui/AnswerFragment$CircleRunnable;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/AnswerFragment;Lcom/android/incallui/AnswerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p2, "x1"    # Lcom/android/incallui/AnswerFragment$1;

    .prologue
    .line 1822
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment$CircleRunnable;-><init>(Lcom/android/incallui/AnswerFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x23

    .line 1824
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$4100(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/CircleWaveView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCount:I
    invoke-static {v1}, Lcom/android/incallui/AnswerFragment;->access$4000(Lcom/android/incallui/AnswerFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CircleWaveView;->updateCount(I)V

    .line 1825
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$4100(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/CircleWaveView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 1826
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # operator++ for: Lcom/android/incallui/AnswerFragment;->mCount:I
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$4008(Lcom/android/incallui/AnswerFragment;)I

    .line 1827
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCount:I
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$4000(Lcom/android/incallui/AnswerFragment;)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$1200(Lcom/android/incallui/AnswerFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2a

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1834
    :goto_0
    return-void

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$4100(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/CircleWaveView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CircleWaveView;->updateCount(I)V

    .line 1831
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$4100(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/CircleWaveView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 1832
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$CircleRunnable;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$1200(Lcom/android/incallui/AnswerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ee

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
