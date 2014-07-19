.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
.super Landroid/os/AsyncTask;
.source "GeminiSIMTetherAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactDataAsyTask"
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

.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Landroid/content/Context;)V
    .locals 2
    .param p2, "ct"    # Landroid/content/Context;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 212
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "ContactDataAsyTask constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-object p2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    .line 214
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$202(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    .line 268
    const-string v0, "GeminiSIMTetherAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1100(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getAllContactData()Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$602(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1100(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getTotalContactNum()I

    move-result v1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mTotalConNum:I
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1202(Lcom/mediatek/gemini/GeminiSIMTetherAdd;I)I

    .line 271
    const-string v0, "GeminiSIMTetherAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 260
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "ContactDataAsyTask is cancelled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    const-string v2, "GeminiSIMTetherAdd"

    const-string v3, "onPostExecute"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "isHaveContact":Z
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$600(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$600(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 231
    .local v0, "contactSize":I
    if-lez v0, :cond_2

    .line 232
    const/4 v1, 0x1

    .line 238
    .end local v0    # "contactSize":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 239
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_1
    new-instance v2, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$600(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$802(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    .line 244
    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    .line 245
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 251
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I
    invoke-static {v2, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$902(Lcom/mediatek/gemini/GeminiSIMTetherAdd;I)I

    .line 252
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I
    invoke-static {v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$900(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)I

    move-result v3

    # invokes: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->updateTitle(I)V
    invoke-static {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherAdd;I)V

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v2, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    .line 255
    return-void

    .line 234
    .restart local v0    # "contactSize":I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 241
    .end local v0    # "contactSize":I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 219
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 221
    return-void
.end method
