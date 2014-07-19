.class Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
.super Landroid/os/AsyncTask;
.source "GeminiSIMTetherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactAsyTask"
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
    .line 406
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 407
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "ContactAsyTask constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-object p2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->mContext:Landroid/content/Context;

    .line 409
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 403
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 439
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "doInBackground()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$002(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z

    .line 443
    const-string v0, "GeminiSIMTetherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getCurrSimData()Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$702(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 445
    const-string v0, "GeminiSIMTetherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 453
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "ContactAsyTask cancelled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 455
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 403
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 421
    const-string v0, "GeminiSIMTetherInfo"

    const-string v2, "onPostExecute"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 423
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$902(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    .line 424
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/widget/ListView;

    move-result-object v0

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

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

    .line 426
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v2

    # invokes: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)V

    .line 427
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$002(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z

    .line 429
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v2

    # invokes: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V
    invoke-static {v0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1400(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)V

    .line 430
    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    .line 431
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 432
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1502(Lcom/mediatek/gemini/GeminiSIMTetherInfo;I)I

    .line 433
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1500(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)I

    move-result v1

    # invokes: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1600(Lcom/mediatek/gemini/GeminiSIMTetherInfo;I)V

    .line 434
    const-string v0, "GeminiSIMTetherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute()+ mHasRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$1100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    :cond_0
    move v0, v1

    .line 425
    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 414
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 416
    return-void
.end method
