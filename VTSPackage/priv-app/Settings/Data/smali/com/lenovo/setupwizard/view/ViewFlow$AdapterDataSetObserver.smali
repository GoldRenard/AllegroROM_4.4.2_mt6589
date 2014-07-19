.class Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/setupwizard/view/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/view/ViewFlow;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/view/ViewFlow;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 702
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    iget-object v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I
    invoke-static {v3}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$600(Lcom/lenovo/setupwizard/view/ViewFlow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 703
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 704
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$700(Lcom/lenovo/setupwizard/view/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$700(Lcom/lenovo/setupwizard/view/ViewFlow;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 706
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # setter for: Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v2, v0}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$102(Lcom/lenovo/setupwizard/view/ViewFlow;I)I

    .line 711
    .end local v0    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # invokes: Lcom/lenovo/setupwizard/view/ViewFlow;->resetFocus()V
    invoke-static {v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$800(Lcom/lenovo/setupwizard/view/ViewFlow;)V

    .line 712
    return-void

    .line 704
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method
