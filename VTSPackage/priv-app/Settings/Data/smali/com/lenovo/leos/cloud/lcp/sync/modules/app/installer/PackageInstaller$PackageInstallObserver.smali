.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver$Stub;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v2, "resultDescription"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string v1, "INSTALL_SUCCEEDED"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->notifyObservers(Ljava/lang/Object;)V

    .line 143
    const-string v1, "PackInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "====INSTALL_COMPLETE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returnCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageInstallObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    const-string v3, "INSTALL_"

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->getResultDescription(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v1, v3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
