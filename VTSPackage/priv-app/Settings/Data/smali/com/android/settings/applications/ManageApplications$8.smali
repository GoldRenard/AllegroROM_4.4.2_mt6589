.class Lcom/android/settings/applications/ManageApplications$8;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lv:Landroid/widget/ListView;

.field final synthetic val$menuId:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;Landroid/widget/ListView;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 2180
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$8;->val$lv:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$8;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/settings/applications/ManageApplications$8;->val$menuId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v13}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v12

    .line 2187
    .local v12, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    .line 2188
    .local v1, "count":I
    const/4 v7, 0x0

    .line 2189
    .local v7, "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2190
    .local v9, "mPm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 2191
    .local v11, "moveFlags":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/applications/ManageApplications$8;->val$menuId:I

    const/16 v14, 0x10

    if-ne v13, v14, :cond_0

    .line 2192
    const/4 v11, 0x1

    .line 2196
    :goto_0
    const-string v13, "ManageApplications"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "click move app button , and the move flag is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    new-instance v6, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v6}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    .line 2198
    .local v6, "mCanBeOnSdCardChecker":Lcom/android/settings/applications/CanBeOnSdCardChecker;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->totalsd_num:I
    invoke-static {v13, v1}, Lcom/android/settings/applications/ManageApplications;->access$2202(Lcom/android/settings/applications/ManageApplications;I)I

    .line 2199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v14, 0x0

    # setter for: Lcom/android/settings/applications/ManageApplications;->movetosd_no:I
    invoke-static {v13, v14}, Lcom/android/settings/applications/ManageApplications;->access$2302(Lcom/android/settings/applications/ManageApplications;I)I

    .line 2200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v14, 0x0

    # setter for: Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I
    invoke-static {v13, v14}, Lcom/android/settings/applications/ManageApplications;->access$2402(Lcom/android/settings/applications/ManageApplications;I)I

    .line 2201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v14, 0x1

    # setter for: Lcom/android/settings/applications/ManageApplications;->flag_movetosd:Z
    invoke-static {v13, v14}, Lcom/android/settings/applications/ManageApplications;->access$2502(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 2202
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v8, v7

    .end local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .local v8, "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :goto_1
    if-ge v4, v1, :cond_3

    .line 2203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->obj:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/settings/applications/ManageApplications;->access$2100(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2204
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/applications/ManageApplications$8;->val$menuId:I

    const/16 v15, 0xf

    if-ne v13, v15, :cond_2

    .line 2205
    invoke-virtual {v6}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2208
    :try_start_1
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v9, v13, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 2212
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-virtual {v6, v5}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v10, 0x1

    .line 2213
    .local v10, "moveDisable":Z
    :goto_2
    if-eqz v10, :cond_2

    .line 2214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    # operator++ for: Lcom/android/settings/applications/ManageApplications;->movetosd_no:I
    invoke-static {v13}, Lcom/android/settings/applications/ManageApplications;->access$2308(Lcom/android/settings/applications/ManageApplications;)I

    .line 2215
    monitor-exit v14

    move-object v7, v8

    .line 2202
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .end local v10    # "moveDisable":Z
    .restart local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v8, v7

    .end local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    goto :goto_1

    .line 2194
    .end local v4    # "i":I
    .end local v6    # "mCanBeOnSdCardChecker":Lcom/android/settings/applications/CanBeOnSdCardChecker;
    .end local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :cond_0
    const/4 v11, 0x2

    goto :goto_0

    .line 2209
    .end local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v4    # "i":I
    .restart local v6    # "mCanBeOnSdCardChecker":Lcom/android/settings/applications/CanBeOnSdCardChecker;
    .restart local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :catch_0
    move-exception v2

    .line 2210
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit v14

    move-object v7, v8

    .end local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    goto :goto_3

    .line 2212
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 2218
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v15, 0x0

    # setter for: Lcom/android/settings/applications/ManageApplications;->flag_movetosd:Z
    invoke-static {v13, v15}, Lcom/android/settings/applications/ManageApplications;->access$2502(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 2219
    if-nez v8, :cond_7

    .line 2220
    new-instance v7, Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v7, v13}, Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;-><init>(Lcom/android/settings/applications/ManageApplications;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2222
    .end local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :goto_4
    :try_start_3
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v13, v7, v11}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 2223
    monitor-exit v14

    goto :goto_3

    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 2225
    .end local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->flag_movetosd:Z
    invoke-static {v13}, Lcom/android/settings/applications/ManageApplications;->access$2500(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2226
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 2227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v13, v13, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v13, v13, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-nez v13, :cond_6

    .line 2228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ManageApplications$8;->val$context:Landroid/content/Context;

    const v15, 0x7f09016b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    move-object/from16 v18, v0

    # getter for: Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I
    invoke-static/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications;->access$2400(Lcom/android/settings/applications/ManageApplications;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 2229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v14, 0x1

    # setter for: Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z
    invoke-static {v13, v14}, Lcom/android/settings/applications/ManageApplications;->access$102(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 2234
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 2235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v13}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 2236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v13}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 2237
    .local v3, "host":Landroid/app/Activity;
    if-eqz v3, :cond_5

    .line 2238
    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2243
    .end local v3    # "host":Landroid/app/Activity;
    :cond_5
    return-void

    .line 2230
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v13, v13, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v13, v13, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 2231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v14, 0x1

    # setter for: Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z
    invoke-static {v13, v14}, Lcom/android/settings/applications/ManageApplications;->access$002(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 2232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ManageApplications$8;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ManageApplications$8;->val$context:Landroid/content/Context;

    const v15, 0x7f09016c

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications$8;->this$0:Lcom/android/settings/applications/ManageApplications;

    move-object/from16 v18, v0

    # getter for: Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I
    invoke-static/range {v18 .. v18}, Lcom/android/settings/applications/ManageApplications;->access$2400(Lcom/android/settings/applications/ManageApplications;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 2223
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    goto/16 :goto_5

    .end local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    :cond_7
    move-object v7, v8

    .end local v8    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    .restart local v7    # "mPackageMoveObserver":Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
    goto/16 :goto_4
.end method
