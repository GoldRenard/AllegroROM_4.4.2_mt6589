.class final Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;
.super Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrxmFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$1;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 100
    const-string v0, "BluetoothDeviceFilterEx"

    const-string v1, "Enter PrxmFilter to matches"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p1, :cond_0

    .line 102
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx;->PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
