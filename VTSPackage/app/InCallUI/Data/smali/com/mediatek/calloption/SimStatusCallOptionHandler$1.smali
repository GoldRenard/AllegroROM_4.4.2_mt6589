.class Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;
.super Landroid/os/Handler;
.source "SimStatusCallOptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimStatusCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    iget-object v1, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getCellConnMgr()Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x132

    iget-object v4, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$100(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    move-result v1

    # setter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mResult:I
    invoke-static {v0, v1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$002(Lcom/mediatek/calloption/SimStatusCallOptionHandler;I)I

    .line 71
    iget-object v0, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mResult:I
    invoke-static {v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$000(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimStatusCallOptionHandler;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->showProgressDialogIfNeeded()V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
