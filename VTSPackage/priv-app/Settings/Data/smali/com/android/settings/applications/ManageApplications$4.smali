.class Lcom/android/settings/applications/ManageApplications$4;
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


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$4;->val$lv:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v8, 0x1

    .line 1853
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v3

    .line 1856
    .local v3, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1857
    .local v0, "count":I
    new-instance v2, Lcom/android/settings/applications/ManageApplications$PackageDeleteObserver;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v2, v4}, Lcom/android/settings/applications/ManageApplications$PackageDeleteObserver;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    .line 1859
    .local v2, "observer":Lcom/android/settings/applications/ManageApplications$PackageDeleteObserver;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1860
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->obj:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications;->access$2100(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1862
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v2, v7}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1867
    monitor-exit v5

    .line 1859
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1867
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1870
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1872
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications;->updateActionBarEnabled()V

    .line 1873
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v4, v4, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-nez v4, :cond_2

    .line 1874
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z
    invoke-static {v4, v8}, Lcom/android/settings/applications/ManageApplications;->access$102(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 1879
    :cond_1
    :goto_1
    return-void

    .line 1875
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v4, v4, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1876
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$4;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z
    invoke-static {v4, v8}, Lcom/android/settings/applications/ManageApplications;->access$002(Lcom/android/settings/applications/ManageApplications;Z)Z

    goto :goto_1
.end method
