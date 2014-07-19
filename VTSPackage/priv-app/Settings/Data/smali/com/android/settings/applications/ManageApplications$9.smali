.class Lcom/android/settings/applications/ManageApplications$9;
.super Landroid/os/Handler;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2265
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2267
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2268
    .local v3, "result":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2269
    .local v2, "packageName":Ljava/lang/String;
    if-ne v3, v10, :cond_3

    .line 2270
    const-string v5, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moved resources for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successfully"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I
    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications;->access$2400(Lcom/android/settings/applications/ManageApplications;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->movetosd_no:I
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplications;->access$2300(Lcom/android/settings/applications/ManageApplications;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->totalsd_num:I
    invoke-static {v6}, Lcom/android/settings/applications/ManageApplications;->access$2200(Lcom/android/settings/applications/ManageApplications;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2275
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2276
    .local v1, "lv":Landroid/widget/ListView;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, v5, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-nez v5, :cond_5

    .line 2277
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f09016b

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I
    invoke-static {v9}, Lcom/android/settings/applications/ManageApplications;->access$2400(Lcom/android/settings/applications/ManageApplications;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2278
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z
    invoke-static {v5, v10}, Lcom/android/settings/applications/ManageApplications;->access$102(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 2284
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 2285
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v4

    .line 2287
    .local v4, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2288
    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 2290
    .end local v4    # "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 2291
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2292
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2293
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 2272
    .end local v0    # "host":Landroid/app/Activity;
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_3
    const-string v5, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to move resources , result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2275
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 2279
    .restart local v1    # "lv":Landroid/widget/ListView;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, v5, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 2280
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f09016c

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I
    invoke-static {v9}, Lcom/android/settings/applications/ManageApplications;->access$2400(Lcom/android/settings/applications/ManageApplications;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2281
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$9;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z
    invoke-static {v5, v10}, Lcom/android/settings/applications/ManageApplications;->access$002(Lcom/android/settings/applications/ManageApplications;Z)Z

    goto :goto_3

    .line 2265
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
