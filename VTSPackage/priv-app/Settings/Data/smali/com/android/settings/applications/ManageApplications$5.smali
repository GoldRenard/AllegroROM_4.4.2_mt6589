.class Lcom/android/settings/applications/ManageApplications$5;
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
    .line 1988
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$5;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1992
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$5;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    if-nez v5, :cond_1

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$5;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    iget v5, v5, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1998
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$5;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v5, v5, Lcom/android/settings/applications/ManageApplications;->mCurTab:Lcom/android/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplications$TabInfo;->getRunningProcessesView()Lcom/android/settings/applications/RunningProcessesView;

    move-result-object v3

    .line 1999
    .local v3, "rv":Lcom/android/settings/applications/RunningProcessesView;
    iget-object v5, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v4

    .line 2001
    .local v4, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$5;->val$context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 2003
    .local v2, "mAm":Landroid/app/ActivityManager;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2005
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2006
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2007
    const-string v6, "ManageApplications"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "will kill "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$5;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/settings/applications/ManageApplications;->forceStopPackage(Ljava/lang/String;)V

    .line 2005
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2015
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
