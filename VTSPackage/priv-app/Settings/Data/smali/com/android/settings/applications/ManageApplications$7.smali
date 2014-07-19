.class Lcom/android/settings/applications/ManageApplications$7;
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
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$7;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$7;->val$lv:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2094
    sput-boolean v8, Lcom/android/settings/applications/ManageApplications;->selectall_flag:Z

    .line 2096
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2099
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$7;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getSelectedList()Ljava/util/List;

    move-result-object v7

    .line 2102
    .local v7, "selectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2103
    .local v5, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 2104
    const-string v2, "ManageApplications"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable app dialog "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    new-instance v0, Lcom/android/settings/applications/ManageApplications$DisableChanger;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications$DisableChanger;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;III)V

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2103
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2114
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2115
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$7;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->enable_flag:Z
    invoke-static {v0, v9}, Lcom/android/settings/applications/ManageApplications;->access$202(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 2116
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$7;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 2117
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$7;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 2118
    .local v6, "host":Landroid/app/Activity;
    if-eqz v6, :cond_1

    .line 2119
    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2122
    :cond_1
    return-void
.end method
