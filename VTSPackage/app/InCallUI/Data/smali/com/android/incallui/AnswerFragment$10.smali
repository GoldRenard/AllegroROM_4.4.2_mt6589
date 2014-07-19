.class Lcom/android/incallui/AnswerFragment$10;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->constructIncomingPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
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
    .line 668
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$10;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$10;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->handleIncomingMenuItemClickMTK(Landroid/view/MenuItem;)Z
    invoke-static {v0, p1}, Lcom/android/incallui/AnswerFragment;->access$1400(Lcom/android/incallui/AnswerFragment;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
