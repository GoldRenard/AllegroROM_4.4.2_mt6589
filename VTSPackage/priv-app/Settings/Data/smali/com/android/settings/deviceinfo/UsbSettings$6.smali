.class Lcom/android/settings/deviceinfo/UsbSettings$6;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 923
    const-string v1, "UsbSettings"

    const-string v2, "usbSetButton click!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V
    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings/deviceinfo/UsbSettings;)V

    .line 926
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 927
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 928
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_PREPARE_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 932
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    .line 933
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$6$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbSettings$6$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 939
    return-void

    .line 932
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
