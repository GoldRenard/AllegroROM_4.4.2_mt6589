.class Lcom/android/incallui/CallCardFragment$8;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v7, 0x0

    .line 1664
    const-string v5, "onAnimationEnd"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1665
    const/4 v0, 0x0

    .line 1666
    .local v0, "allAnimationEnd":Z
    check-cast p1, Landroid/view/animation/AnimationSet;

    .end local p1    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 1667
    .local v1, "animationCount":I
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # operator++ for: Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$508(Lcom/android/incallui/CallCardFragment;)I

    .line 1669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mShowAnimator2End "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I
    invoke-static {v6}, Lcom/android/incallui/CallCardFragment;->access$500(Lcom/android/incallui/CallCardFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " animationCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1671
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$500(Lcom/android/incallui/CallCardFragment;)I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 1672
    const/4 v0, 0x1

    .line 1675
    :cond_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mShowSwtchCall2Animator:Z
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$300(Lcom/android/incallui/CallCardFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1677
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->switchCalls()V

    .line 1679
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # invokes: Lcom/android/incallui/CallCardFragment;->broadRingCallToggled()V
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$600(Lcom/android/incallui/CallCardFragment;)V

    .line 1681
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->requestUpdateScreen()V

    .line 1682
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # setter for: Lcom/android/incallui/CallCardFragment;->mShowSwtchCall2Animator:Z
    invoke-static {v5, v7}, Lcom/android/incallui/CallCardFragment;->access$302(Lcom/android/incallui/CallCardFragment;Z)Z

    .line 1683
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->switchRingtoneForDualTalk()V

    .line 1685
    :cond_1
    if-eqz v0, :cond_2

    .line 1686
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0600a9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1687
    .local v3, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$700(Lcom/android/incallui/CallCardFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoHeight:I
    invoke-static {v6}, Lcom/android/incallui/CallCardFragment;->access$800(Lcom/android/incallui/CallCardFragment;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1689
    .local v4, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$900(Lcom/android/incallui/CallCardFragment;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1690
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1691
    .local v2, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1692
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1693
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$1000(Lcom/android/incallui/CallCardFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 1694
    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # setter for: Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I
    invoke-static {v5, v7}, Lcom/android/incallui/CallCardFragment;->access$502(Lcom/android/incallui/CallCardFragment;I)I

    .line 1696
    .end local v2    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "relativeLayout":Landroid/widget/RelativeLayout;
    .end local v4    # "source":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1698
    const-string v0, "onAnimationRepeat"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1699
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1701
    const-string v3, "onAnimationStart"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1702
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1703
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1705
    .local v2, "source":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1706
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1707
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1708
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z
    invoke-static {v3}, Lcom/android/incallui/CallCardFragment;->access$1100(Lcom/android/incallui/CallCardFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1709
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # setter for: Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z
    invoke-static {v3, v6}, Lcom/android/incallui/CallCardFragment;->access$1102(Lcom/android/incallui/CallCardFragment;Z)Z

    .line 1711
    :cond_0
    return-void
.end method
