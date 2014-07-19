.class Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2312
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;->this$0:Lcom/android/settings/applications/ManageApplications;

    # operator++ for: Lcom/android/settings/applications/ManageApplications;->movetosd_yes:I
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->access$2408(Lcom/android/settings/applications/ManageApplications;)I

    .line 2313
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->access$2600(Lcom/android/settings/applications/ManageApplications;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2314
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2315
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2316
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$PackageMoveObserver;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->access$2600(Lcom/android/settings/applications/ManageApplications;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2317
    return-void
.end method
