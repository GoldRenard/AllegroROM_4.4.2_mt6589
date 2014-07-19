.class Lcom/android/incallui/AnswerFragment$13;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showAnimation1(Z)V
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
    .line 1095
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$13;->this$0:Lcom/android/incallui/AnswerFragment;

    iput-boolean p2, p0, Lcom/android/incallui/AnswerFragment$13;->val$playWaveAnim:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$13;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$3300(Lcom/android/incallui/AnswerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$13;->this$0:Lcom/android/incallui/AnswerFragment;

    iget-boolean v1, p0, Lcom/android/incallui/AnswerFragment$13;->val$playWaveAnim:Z

    # invokes: Lcom/android/incallui/AnswerFragment;->showAnimation2(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/AnswerFragment;->access$3500(Lcom/android/incallui/AnswerFragment;Z)V

    .line 1109
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1102
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1098
    return-void
.end method
