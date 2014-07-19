.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;
.super Ljava/lang/Object;
.source "LeSyncSlientAppInstaller.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeSyncSlientInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "b":Landroid/os/Bundle;
    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 105
    check-cast v0, Landroid/os/Bundle;

    .line 108
    const-string v2, "resultCode"

    const/16 v3, -0x3e7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "resultCode":I
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller$LeSyncSlientInstallObserver;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->installCallback(I)V
    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;I)V

    .line 111
    .end local v1    # "resultCode":I
    :cond_0
    return-void
.end method
