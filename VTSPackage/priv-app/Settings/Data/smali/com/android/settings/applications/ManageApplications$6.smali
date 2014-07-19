.class Lcom/android/settings/applications/ManageApplications$6;
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


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$6;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2039
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$6;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v6, v6, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v6, v6, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 2040
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$6;->val$context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 2042
    .local v3, "mAm":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$6;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v6, v6, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v6}, Lcom/android/settings/applications/ManageApplications$TabInfo;->getRunningProcessesView()Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v4

    .line 2043
    .local v4, "rv":Lcom/android/settings/applications/RunningProcessesView;
    iget-object v6, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v6}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v5

    .line 2045
    .local v5, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2046
    iget-object v6, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v6}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getCount()I

    move-result v1

    .line 2047
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2048
    iget-object v6, v4, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v6, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 2049
    .local v0, "app":Lcom/android/settings/applications/RunningState$MergedItem;
    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 2052
    const-string v6, "com.android.settings"

    iget-object v7, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2047
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2054
    :cond_1
    iget-object v6, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2057
    .end local v0    # "app":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 2058
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    .line 2059
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2060
    const-string v7, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "will kill "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications$6;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/settings/applications/ManageApplications;->forceStopPackage(Ljava/lang/String;)V

    .line 2058
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2065
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "mAm":Landroid/app/ActivityManager;
    .end local v4    # "rv":Lcom/android/settings/applications/RunningProcessesView;
    .end local v5    # "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method
