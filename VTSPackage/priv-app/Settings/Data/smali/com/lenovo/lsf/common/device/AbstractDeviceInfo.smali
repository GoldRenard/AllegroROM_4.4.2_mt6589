.class public abstract Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.super Ljava/lang/Object;
.source "AbstractDeviceInfo.java"

# interfaces
.implements Lcom/lenovo/lsf/common/device/DeviceInfo;


# instance fields
.field protected cellIDs:[I

.field deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

.field private initialized:Z

.field protected latitudes:[I

.field protected locationIDs:[I

.field protected longitudes:[I

.field protected phoneTypes:[I

.field protected systemIDs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V
    .locals 5
    .param p1, "di"    # Lcom/lenovo/lsf/common/device/DeviceInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    .line 12
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    .line 13
    new-array v0, v3, [Ljava/lang/String;

    sget-object v1, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    .line 14
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    .line 15
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    .line 16
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    .line 17
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    .line 18
    iput-boolean v4, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->initialized:Z

    .line 22
    iput-object p1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    .line 23
    return-void

    .line 14
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 15
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 16
    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 17
    :array_3
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    iget-boolean v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->initialized:Z

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->initialize(I)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->initialize(I)V

    .line 29
    iput-boolean v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->initialized:Z

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public getCellID(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->init()V

    .line 146
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getCellID(I)I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected abstract getCellLocation(I)Landroid/telephony/CellLocation;
.end method

.method protected abstract getDeviceId(I)Ljava/lang/String;
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "deviceid":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v1, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    return-object v0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v1, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getIMSI(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    return-object v0
.end method

.method public getLatitude(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->init()V

    .line 155
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    aget v0, v0, p1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getLatitude(I)I

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getLocationID(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->init()V

    .line 137
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getLocationID(I)I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getLongitude(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->init()V

    .line 164
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    aget v0, v0, p1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getLongitude(I)I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSMC(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getSMSCentor(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "smc":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v1, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getSMC(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    return-object v0
.end method

.method protected abstract getSMSCentor(I)Ljava/lang/String;
.end method

.method public getSWVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getSWVersion()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public getSystemID(I)Ljava/lang/String;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->init()V

    .line 128
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget-object v1, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getSystemID(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected initialize(I)V
    .locals 6
    .param p1, "idx"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 34
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    .line 35
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_2

    .line 36
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    const/4 v4, 0x2

    aput v4, v3, p1

    move-object v0, v1

    .line 38
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 39
    .local v0, "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    iget-object v4, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    sget-object v3, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    :goto_0
    aput-object v3, v4, p1

    .line 40
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    aput v4, v3, p1

    .line 41
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    aput v4, v3, p1

    .line 42
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->latitudes:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v4

    aput v4, v3, p1

    .line 43
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->longitudes:[I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    aput v4, v3, p1

    .line 53
    .end local v0    # "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    :goto_1
    return-void

    .line 39
    .restart local v0    # "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 46
    .end local v0    # "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    const/4 v4, 0x1

    aput v4, v3, p1

    .line 47
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->systemIDs:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    move-object v2, v1

    .line 48
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 49
    .local v2, "gsm":Landroid/telephony/gsm/GsmCellLocation;
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->locationIDs:[I

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    aput v4, v3, p1

    .line 50
    iget-object v3, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->cellIDs:[I

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    aput v4, v3, p1

    goto :goto_1
.end method

.method public isCDMANetwork(I)Z
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->init()V

    .line 173
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->isCDMANetwork(I)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkAvailable(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->init()V

    .line 182
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->deviceInfo:Lcom/lenovo/lsf/common/device/DeviceInfo;

    invoke-interface {v0, p1}, Lcom/lenovo/lsf/common/device/DeviceInfo;->isNetworkAvailable(I)Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->phoneTypes:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
