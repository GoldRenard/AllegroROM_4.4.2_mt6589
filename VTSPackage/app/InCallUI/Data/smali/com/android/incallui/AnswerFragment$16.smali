.class Lcom/android/incallui/AnswerFragment$16;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->playWaveAnim2()V
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
    .line 1664
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$16;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$16;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$3300(Lcom/android/incallui/AnswerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$16;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->playWaveAnim3()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$3700(Lcom/android/incallui/AnswerFragment;)V

    .line 1678
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1671
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1667
    return-void
.end method
