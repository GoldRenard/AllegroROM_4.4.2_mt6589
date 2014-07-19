.class Lcom/android/incallui/AnswerFragment$14;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showAnimation2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;

.field final synthetic val$playWaveAnim:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerFragment;Z)V
    .locals 0

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$14;->this$0:Lcom/android/incallui/AnswerFragment;

    iput-boolean p2, p0, Lcom/android/incallui/AnswerFragment$14;->val$playWaveAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$14;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$3300(Lcom/android/incallui/AnswerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment$14;->val$playWaveAnim:Z

    if-eqz v0, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$14;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$1200(Lcom/android/incallui/AnswerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1128
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1124
    return-void
.end method
