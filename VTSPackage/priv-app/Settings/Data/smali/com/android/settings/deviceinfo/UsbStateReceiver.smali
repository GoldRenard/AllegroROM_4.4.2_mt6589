.class public Lcom/android/settings/deviceinfo/UsbStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbStateReceiver.java"


# static fields
.field private static final KEY_AUTOPOP:Ljava/lang/String; = "usb_auto_popup"

.field private static mIsConnected:Z


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mIsConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isEncryptMode()Z
    .locals 2

    .prologue
    .line 60
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSetupwizard(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    .local v0, "config":I
    if-ne v0, v2, :cond_0

    .line 76
    .end local v0    # "config":I
    :goto_0
    return v2

    .line 72
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 22
    const-string v4, "tag"

    const-string v5, "UsbStateReceiver -- onReceive"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    const-string v4, "tag"

    const-string v5, "UsbStateReceiver --ACTION_USB_STATE "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v4, "connected"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 29
    .local v3, "isSwUsbConnected":Z
    sget-boolean v4, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mIsConnected:Z

    if-eq v4, v3, :cond_1

    .line 30
    sput-boolean v3, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mIsConnected:Z

    .line 31
    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbStateReceiver;->isEncryptMode()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbStateReceiver;->isSetupwizard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    const-string v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mVibrator:Landroid/os/Vibrator;

    .line 41
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_auto_popup"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 45
    .local v2, "b":I
    if-nez v2, :cond_1

    .line 46
    const-string v4, "tag"

    const-string v5, "UsbStateReceiver --startActivity "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, "activity":Landroid/content/Intent;
    const-string v4, "com.android.settings.STORAGE_USB_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const v4, 0x10008000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    .end local v1    # "activity":Landroid/content/Intent;
    .end local v2    # "b":I
    .end local v3    # "isSwUsbConnected":Z
    :cond_1
    return-void
.end method
