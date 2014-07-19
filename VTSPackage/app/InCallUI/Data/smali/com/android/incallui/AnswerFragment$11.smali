.class Lcom/android/incallui/AnswerFragment$11;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 846
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 851
    .local v1, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 852
    .local v12, "y":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 854
    .local v11, "x":F
    packed-switch v1, :pswitch_data_0

    .line 997
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v15, 0x1

    return v15

    .line 856
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # setter for: Lcom/android/incallui/AnswerFragment;->mCurrentY:F
    invoke-static {v15, v12}, Lcom/android/incallui/AnswerFragment;->access$1502(Lcom/android/incallui/AnswerFragment;F)F

    .line 857
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # setter for: Lcom/android/incallui/AnswerFragment;->mCurrentX:F
    invoke-static {v15, v11}, Lcom/android/incallui/AnswerFragment;->access$1602(Lcom/android/incallui/AnswerFragment;F)F

    .line 859
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->pressCallSlideAnim()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$1700(Lcom/android/incallui/AnswerFragment;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->stopCircleWaveAnim()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$400(Lcom/android/incallui/AnswerFragment;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    const/16 v16, 0x1

    # setter for: Lcom/android/incallui/AnswerFragment;->mStopMoving:Z
    invoke-static/range {v15 .. v16}, Lcom/android/incallui/AnswerFragment;->access$1802(Lcom/android/incallui/AnswerFragment;Z)Z

    goto :goto_0

    .line 891
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$1900(Lcom/android/incallui/AnswerFragment;)Landroid/widget/RelativeLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$1900(Lcom/android/incallui/AnswerFragment;)Landroid/widget/RelativeLayout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v7, v15, v16

    .line 892
    .local v7, "centerY":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$1900(Lcom/android/incallui/AnswerFragment;)Landroid/widget/RelativeLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$1900(Lcom/android/incallui/AnswerFragment;)Landroid/widget/RelativeLayout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    .line 893
    .local v6, "centerX":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->releaseCallSlideAnim()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2000(Lcom/android/incallui/AnswerFragment;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->stopFocusRing()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2100(Lcom/android/incallui/AnswerFragment;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2200(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v6, v7, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 896
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    goto/16 :goto_0

    .line 897
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mHangupRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2400(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v6, v7, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 898
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto/16 :goto_0

    .line 899
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2500(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v6, v7, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 900
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerFragment;->onText()V

    goto/16 :goto_0

    .line 901
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2600(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v6, v7, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 902
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerFragment;->showReminderDialog()V

    goto/16 :goto_0

    .line 914
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    const/16 v16, 0x0

    # setter for: Lcom/android/incallui/AnswerFragment;->mStopMoving:Z
    invoke-static/range {v15 .. v16}, Lcom/android/incallui/AnswerFragment;->access$1802(Lcom/android/incallui/AnswerFragment;Z)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$1200(Lcom/android/incallui/AnswerFragment;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x3ea

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 921
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v5, v15, v16

    .line 922
    .local v5, "c_Y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v4, v15, v16

    .line 923
    .local v4, "c_X":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCurrentY:F
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$1500(Lcom/android/incallui/AnswerFragment;)F

    move-result v15

    sub-float v15, v12, v15

    float-to-int v9, v15

    .line 924
    .local v9, "offsetY":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCurrentX:F
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$1600(Lcom/android/incallui/AnswerFragment;)F

    move-result v15

    sub-float v15, v11, v15

    float-to-int v8, v15

    .line 926
    .local v8, "offsetX":I
    const/4 v3, 0x0

    .line 927
    .local v3, "c0_Y":I
    const/4 v2, 0x0

    .line 928
    .local v2, "c0_X":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 929
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v3, v15, 0x2

    .line 930
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v2, v15, 0x2

    .line 933
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mRadius:I
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2800(Lcom/android/incallui/AnswerFragment;)I

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2200(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 934
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v13, v15, 0x2

    .line 935
    .local v13, "y0":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2200(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2200(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v14, v15, 0x2

    .line 936
    .local v14, "y2":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2200(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/incallui/AnswerFragment;->access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    # setter for: Lcom/android/incallui/AnswerFragment;->mRadius:I
    invoke-static/range {v15 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2802(Lcom/android/incallui/AnswerFragment;I)I

    .line 938
    .end local v13    # "y0":I
    .end local v14    # "y2":I
    :cond_6
    sub-int v15, v2, v4

    sub-int v16, v2, v4

    mul-int v15, v15, v16

    sub-int v16, v3, v5

    sub-int v17, v3, v5

    mul-int v16, v16, v17

    add-int v15, v15, v16

    int-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-int v10, v15

    .line 939
    .local v10, "r":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mRadius:I
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2800(Lcom/android/incallui/AnswerFragment;)I

    move-result v15

    if-lt v10, v15, :cond_a

    .line 940
    if-lt v5, v3, :cond_7

    if-lez v9, :cond_7

    .line 941
    const/4 v9, 0x0

    .line 943
    :cond_7
    if-gt v5, v3, :cond_8

    if-gez v9, :cond_8

    .line 944
    const/4 v9, 0x0

    .line 946
    :cond_8
    if-lt v4, v2, :cond_9

    if-lez v8, :cond_9

    .line 947
    const/4 v8, 0x0

    .line 949
    :cond_9
    if-gt v4, v2, :cond_a

    if-gez v8, :cond_a

    .line 950
    const/4 v8, 0x0

    .line 969
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->moveCallSlide(II)V
    invoke-static {v15, v8, v9}, Lcom/android/incallui/AnswerFragment;->access$2900(Lcom/android/incallui/AnswerFragment;II)V

    .line 970
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2200(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v4, v5, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 971
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->startFocusRing()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3000(Lcom/android/incallui/AnswerFragment;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3100(Lcom/android/incallui/AnswerFragment;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 973
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    goto/16 :goto_0

    .line 975
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mHangupRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2400(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v4, v5, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->startFocusRing()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3000(Lcom/android/incallui/AnswerFragment;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3100(Lcom/android/incallui/AnswerFragment;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto/16 :goto_0

    .line 980
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2500(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v4, v5, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 981
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->startFocusRing()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3000(Lcom/android/incallui/AnswerFragment;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3100(Lcom/android/incallui/AnswerFragment;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerFragment;->onText()V

    goto/16 :goto_0

    .line 985
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    move-object/from16 v16, v0

    # getter for: Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/AnswerFragment;->access$2600(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z
    invoke-static {v15, v4, v5, v0}, Lcom/android/incallui/AnswerFragment;->access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 986
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->startFocusRing()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3000(Lcom/android/incallui/AnswerFragment;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$3100(Lcom/android/incallui/AnswerFragment;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 988
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v15}, Lcom/android/incallui/AnswerFragment;->showReminderDialog()V

    goto/16 :goto_0

    .line 991
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerFragment$11;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->stopFocusRing()V
    invoke-static {v15}, Lcom/android/incallui/AnswerFragment;->access$2100(Lcom/android/incallui/AnswerFragment;)V

    goto/16 :goto_0

    .line 854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
