.class Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;
.super Landroid/os/AsyncTask;
.source "GeminiSIMTetherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisContactAsyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V
    .locals 2
    .param p2, "ct"    # Landroid/content/Context;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 353
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "ContactAsyTask constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-object p2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->mContext:Landroid/content/Context;

    .line 355
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 349
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 366
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v5, "tetheredContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 371
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 372
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    .line 373
    .local v4, "item":Lcom/mediatek/gemini/GeminiSIMTetherItem;
    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getCheckedStatus()I

    move-result v0

    .line 374
    .local v0, "checkedStatus":I
    if-nez v0, :cond_0

    .line 375
    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getContactId()I

    move-result v1

    .line 376
    .local v1, "contactId":I
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v1    # "contactId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "checkedStatus":I
    .end local v4    # "item":Lcom/mediatek/gemini/GeminiSIMTetherItem;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v6}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->setCurrTetheredNum(Ljava/util/ArrayList;Z)V

    .line 381
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v7}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getCurrSimData()Ljava/util/ArrayList;

    move-result-object v7

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$702(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 382
    const/4 v6, 0x0

    return-object v6
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 398
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "DisContactAsyTask cancelled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 400
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 349
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 387
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 389
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$902(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    .line 390
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/widget/ListView;

    move-result-object v0

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z
    invoke-static {v2, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1102(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z

    .line 392
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v2

    # invokes: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)V

    .line 393
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$002(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z

    .line 394
    return-void

    :cond_0
    move v0, v1

    .line 391
    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 359
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 360
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onPreExecute DisContactAsyTask"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 362
    return-void
.end method
