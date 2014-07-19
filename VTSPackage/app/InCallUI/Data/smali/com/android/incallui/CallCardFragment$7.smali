.class Lcom/android/incallui/CallCardFragment$7;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1640
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$7;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1643
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1644
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1656
    const-string v1, "callCardListener"

    const-string v2, "do nothing"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :goto_0
    return-void

    .line 1646
    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$7;->this$0:Lcom/android/incallui/CallCardFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/CallCardFragment;->mShowSwtchCall2Animator:Z
    invoke-static {v1, v2}, Lcom/android/incallui/CallCardFragment;->access$302(Lcom/android/incallui/CallCardFragment;Z)Z

    .line 1647
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$7;->this$0:Lcom/android/incallui/CallCardFragment;

    # invokes: Lcom/android/incallui/CallCardFragment;->displaySwitchIncomingAnimator()V
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$400(Lcom/android/incallui/CallCardFragment;)V

    goto :goto_0

    .line 1651
    :sswitch_1
    const-string v1, "callCardListener"

    const-string v2, "Which call to disconnected?"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$7;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->onDualtalkSecondaryPhotoClicked()V

    goto :goto_0

    .line 1644
    :sswitch_data_0
    .sparse-switch
        0x7f06007d -> :sswitch_1
        0x7f060083 -> :sswitch_0
    .end sparse-switch
.end method
