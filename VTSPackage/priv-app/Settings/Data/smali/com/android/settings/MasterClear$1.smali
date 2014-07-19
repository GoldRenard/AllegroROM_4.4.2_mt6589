.class Lcom/android/settings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 232
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # setter for: Lcom/android/settings/MasterClear;->mPinConfirmed:Z
    invoke-static {v3, v5}, Lcom/android/settings/MasterClear;->access$002(Lcom/android/settings/MasterClear;Z)Z

    .line 233
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # invokes: Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const/16 v4, 0x37

    # invokes: Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v3, v4}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$300(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$300(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 241
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mExternalStorageFuse:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$400(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 246
    const-string v3, "com.lenovo.BackupRestore.CHOOSE_BACKUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :goto_1
    const/16 v0, 0x10

    .line 257
    .local v0, "ExitApplication":I
    :try_start_0
    const-string v3, "flag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    const/16 v4, 0x39

    invoke-virtual {v3, v2, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090c42

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    .end local v0    # "ExitApplication":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # invokes: Lcom/android/settings/MasterClear;->isRowProject()Z
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$500(Lcom/android/settings/MasterClear;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    const-string v3, "com.lenovo.leos.cloud.sync.row.CLOUD_BACKUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 251
    :cond_3
    const-string v3, "com.lenovo.leos.cloud.sync.CLOUD_BACKUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 264
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # invokes: Lcom/android/settings/MasterClear;->showFinalConfirmation()V
    invoke-static {v3}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)V

    goto :goto_0
.end method
