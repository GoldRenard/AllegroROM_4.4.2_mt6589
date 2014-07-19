.class Lcom/lenovo/setupwizard/view/ViewFlow$1;
.super Ljava/lang/Object;
.source "ViewFlow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/setupwizard/view/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/view/ViewFlow;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/view/ViewFlow;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$1;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow$1;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$1;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$000(Lcom/lenovo/setupwizard/view/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow$1;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$1;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I
    invoke-static {v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$100(Lcom/lenovo/setupwizard/view/ViewFlow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->setSelection(I)V

    .line 71
    return-void
.end method
