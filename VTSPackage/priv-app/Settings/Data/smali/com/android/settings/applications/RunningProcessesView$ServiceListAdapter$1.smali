.class Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->this$1:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->this$1:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    # getter for: Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->access$000(Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->this$1:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    # getter for: Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->access$000(Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->this$1:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mApplicationHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 365
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->this$1:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    # getter for: Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->selectedList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->access$000(Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
