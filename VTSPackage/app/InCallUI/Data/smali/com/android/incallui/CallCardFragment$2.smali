.class Lcom/android/incallui/CallCardFragment$2;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$2;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 203
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$2;->val$view:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 204
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 208
    .local v2, "location":[I
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$2;->val$view:Landroid/view/View;

    const v4, 0x7f060094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 210
    .local v1, "callCardBottom":I
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$2;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallCardHeight:I
    invoke-static {v3}, Lcom/android/incallui/CallCardFragment;->access$100(Lcom/android/incallui/CallCardFragment;)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$2;->this$0:Lcom/android/incallui/CallCardFragment;

    # setter for: Lcom/android/incallui/CallCardFragment;->mCallCardHeight:I
    invoke-static {v3, v1}, Lcom/android/incallui/CallCardFragment;->access$102(Lcom/android/incallui/CallCardFragment;I)I

    .line 212
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$2;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 214
    check-cast v0, Lcom/android/incallui/InCallActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->onCallCardLayoutChange(I)V

    .line 218
    .end local v1    # "callCardBottom":I
    .end local v2    # "location":[I
    :cond_0
    return-void
.end method
