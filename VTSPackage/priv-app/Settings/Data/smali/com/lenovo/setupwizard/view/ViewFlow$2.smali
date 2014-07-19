.class Lcom/lenovo/setupwizard/view/ViewFlow$2;
.super Landroid/os/Handler;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/view/ViewFlow;->startAutoFlowTimer()V
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
    .line 122
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$2;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$2;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow$2;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I
    invoke-static {v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$200(Lcom/lenovo/setupwizard/view/ViewFlow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow$2;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    rem-int/2addr v2, v3

    # invokes: Lcom/lenovo/setupwizard/view/ViewFlow;->snapToScreen(I)V
    invoke-static {v1, v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$300(Lcom/lenovo/setupwizard/view/ViewFlow;I)V

    .line 127
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$2;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$400(Lcom/lenovo/setupwizard/view/ViewFlow;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow$2;->this$0:Lcom/lenovo/setupwizard/view/ViewFlow;

    # getter for: Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J
    invoke-static {v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->access$500(Lcom/lenovo/setupwizard/view/ViewFlow;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    return-void
.end method
