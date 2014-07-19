.class final Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$1;
.super Ljava/util/HashMap;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$BPPFilter;

    invoke-direct {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$BPPFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$1;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$BIPFilter;

    invoke-direct {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$BIPFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$1;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;

    invoke-direct {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilterEx$1;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
