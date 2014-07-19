.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LeStoreAppInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeStoreAppInstallerBrodcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "intentAction":Ljava/lang/String;
    const-string v5, "packagename"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "packageName":Ljava/lang/String;
    const-string v5, "versioncode"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "versionCode":Ljava/lang/String;
    const-string v5, "AppInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " ########LeStoreAppInstallerBrodcastReceiver, action:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",versionCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v5, "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_INSTALL_PERMISSION"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    const-string v5, "permission"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "granted":I
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->setLeStorePermissionGrantedFlag(Z)V
    invoke-static {v6, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;Z)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 182
    .end local v0    # "granted":I
    :cond_3
    const-string v5, "resultcode"

    const/16 v6, -0x3e7

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, "resultCode":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller$LeStoreAppInstallerBrodcastReceiver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installCallback(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
