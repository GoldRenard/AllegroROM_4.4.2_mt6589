.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 966
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->selectedList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->selectedList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 972
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 973
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 974
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1200(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 975
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NOT_ALL"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 976
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->selectedList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1100(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 977
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "flag"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 978
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1200(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-eq v1, v4, :cond_3

    .line 979
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NOT_ALL"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 980
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1700(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1000
    :goto_1
    return-void

    .line 969
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->selectedList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 983
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->selectedList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 984
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NOT_ALL"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "flag"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 986
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1200(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-eq v1, v4, :cond_3

    .line 987
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1700(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 990
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->selectedList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->selectedList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1100(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 991
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NOT_ALL"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "flag"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 993
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ManageApplications$TabInfo;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1200(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-eq v1, v4, :cond_3

    .line 994
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1700(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 998
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # getter for: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$1700(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
