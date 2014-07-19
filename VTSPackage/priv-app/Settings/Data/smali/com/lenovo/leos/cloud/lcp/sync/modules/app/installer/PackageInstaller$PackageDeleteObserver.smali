.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v1, "resultDescription"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    const-string v3, "DELETE_"

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->getResultDescription(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "PackInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "====UNINSTALL_COMPLETE:"

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

    .line 129
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller$PackageDeleteObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/PackageInstaller;->notifyObservers(Ljava/lang/Object;)V

    .line 130
    return-void
.end method
