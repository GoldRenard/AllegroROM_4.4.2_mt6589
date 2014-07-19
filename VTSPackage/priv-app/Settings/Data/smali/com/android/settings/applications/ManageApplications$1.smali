.class Lcom/android/settings/applications/ManageApplications$1;
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
    .line 250
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "flag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 256
    .local v0, "flag":Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 257
    .local v3, "type":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NOT_ALL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 258
    .local v2, "notAll":Z
    if-nez v2, :cond_1

    .line 259
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 260
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->sd_select_flag:Z
    invoke-static {v4, v0}, Lcom/android/settings/applications/ManageApplications;->access$002(Lcom/android/settings/applications/ManageApplications;Z)Z

    .line 269
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 270
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 271
    .local v1, "host":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 261
    .end local v1    # "host":Landroid/app/Activity;
    :cond_2
    if-nez v3, :cond_3

    .line 262
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->all_select_flag:Z
    invoke-static {v4, v0}, Lcom/android/settings/applications/ManageApplications;->access$102(Lcom/android/settings/applications/ManageApplications;Z)Z

    goto :goto_1

    .line 263
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 264
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->enable_flag:Z
    invoke-static {v4, v0}, Lcom/android/settings/applications/ManageApplications;->access$202(Lcom/android/settings/applications/ManageApplications;Z)Z

    goto :goto_1

    .line 265
    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    # setter for: Lcom/android/settings/applications/ManageApplications;->disable_flag:Z
    invoke-static {v4, v0}, Lcom/android/settings/applications/ManageApplications;->access$302(Lcom/android/settings/applications/ManageApplications;Z)Z

    goto :goto_1

    .line 276
    .end local v0    # "flag":Z
    .end local v2    # "notAll":Z
    .end local v3    # "type":I
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
