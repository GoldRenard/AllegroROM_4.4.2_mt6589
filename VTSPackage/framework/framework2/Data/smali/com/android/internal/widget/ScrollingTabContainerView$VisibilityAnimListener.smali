.class public Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 1

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 749
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 753
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 735
    iput-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 736
    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 727
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 728
    return-object p0
.end method
