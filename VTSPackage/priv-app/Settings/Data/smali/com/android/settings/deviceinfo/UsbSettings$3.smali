.class Lcom/android/settings/deviceinfo/UsbSettings$3;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 303
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 310
    return-void
.end method
