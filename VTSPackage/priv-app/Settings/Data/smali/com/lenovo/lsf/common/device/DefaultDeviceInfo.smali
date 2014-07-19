.class public Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;
.super Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.source "DefaultDeviceInfo.java"


# instance fields
.field cl:Landroid/telephony/CellLocation;

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;-><init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    .line 17
    iput-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 18
    iput-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->cl:Landroid/telephony/CellLocation;

    .line 23
    if-eqz p1, :cond_0

    .line 25
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 24
    iput-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 26
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->cl:Landroid/telephony/CellLocation;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 63
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->cl:Landroid/telephony/CellLocation;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 71
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 92
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method protected getSMSCentor(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 87
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object v0
.end method

.method public getSWVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 79
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCDMANetwork(I)Z
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
