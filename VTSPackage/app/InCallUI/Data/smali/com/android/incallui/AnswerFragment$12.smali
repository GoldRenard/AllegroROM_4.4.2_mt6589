.class Lcom/android/incallui/AnswerFragment$12;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showAnimation()V
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
    .line 1054
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$12;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$12;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$3300(Lcom/android/incallui/AnswerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$12;->this$0:Lcom/android/incallui/AnswerFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/AnswerFragment;->showAnimation1(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/AnswerFragment;->access$3400(Lcom/android/incallui/AnswerFragment;Z)V

    .line 1069
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1062
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$12;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mInsetPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$3200(Lcom/android/incallui/AnswerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1058
    return-void
.end method
