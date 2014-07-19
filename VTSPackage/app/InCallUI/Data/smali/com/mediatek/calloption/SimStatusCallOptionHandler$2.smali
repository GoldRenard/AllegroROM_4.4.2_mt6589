.class Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;
.super Ljava/lang/Object;
.source "SimStatusCallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 82
    iput-object p1, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 84
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v3}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getCellConnMgr()Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v3

    # setter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mResult:I
    invoke-static {v2, v3}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$002(Lcom/mediatek/calloption/SimStatusCallOptionHandler;I)I

    .line 85
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getCellConnMgr()Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/CellConnService/CellConnMgr;->getPreferSlot()I

    move-result v1

    .line 86
    .local v1, "slot":I
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run, mResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mResult:I
    invoke-static {v4}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$000(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimStatusCallOptionHandler;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    invoke-virtual {v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->dismissProgressIndication()V

    .line 89
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mResult:I
    invoke-static {v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$000(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 90
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, "oldSolt":I
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afterCheckSIMStatus, oldSolt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimStatusCallOptionHandler;Ljava/lang/String;)V

    .line 94
    if-eq v0, v5, :cond_2

    if-eq v1, v0, :cond_2

    .line 95
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v2}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    iget-object v2, v2, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    iget-object v2, v2, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v3, p0, Lcom/mediatek/calloption/SimStatusCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimStatusCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v3}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimStatusCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method
