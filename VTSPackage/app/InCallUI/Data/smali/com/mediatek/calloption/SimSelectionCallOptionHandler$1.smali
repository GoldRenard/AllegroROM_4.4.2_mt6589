.class Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;
.super Ljava/lang/Object;
.source "SimSelectionCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 621
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    .line 622
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 623
    .local v4, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 627
    .local v6, "slot":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReasonAskDismissDialog, onClick() is called, slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$000(Ljava/lang/String;)V

    .line 628
    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 629
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 630
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # invokes: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$100(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 633
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.extra.slot"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.extra.ip"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 636
    .local v3, "isIPDial":Z
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v8}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "number":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 639
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->initIpDialListArray(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 640
    .local v0, "IpDialList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 641
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 642
    .local v2, "ipPrefix":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.extra.ip"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-virtual {v7, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->setIpPrefix(Ljava/lang/String;)V

    .line 651
    .end local v0    # "IpDialList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "ipPrefix":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    iget-object v7, v7, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v7, :cond_0

    .line 652
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    iget-object v7, v7, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v8, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v8}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 645
    .restart local v0    # "IpDialList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v9, :cond_2

    .line 646
    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    iget-object v8, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;
    invoke-static {v8}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mIpDialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v9}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    # getter for: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mIpDialogCancelListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v10}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$400(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->showIpSelectDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method
