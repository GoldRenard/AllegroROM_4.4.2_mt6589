.class Lcom/android/settings/deviceinfo/UsbSettings$8;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->switchDisplay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;

.field final synthetic val$usbStorageInUse:Z


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iput-boolean p2, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->val$usbStorageInUse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$8;->val$usbStorageInUse:Z

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->switchDisplayAsync(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2000(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    .line 978
    return-void
.end method
