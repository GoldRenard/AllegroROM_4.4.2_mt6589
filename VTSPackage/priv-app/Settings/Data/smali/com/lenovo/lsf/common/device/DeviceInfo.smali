.class public interface abstract Lcom/lenovo/lsf/common/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/common/device/DeviceInfo$CardSlot;,
        Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;
    }
.end annotation


# virtual methods
.method public abstract getCellID(I)I
.end method

.method public abstract getIMEI(I)Ljava/lang/String;
.end method

.method public abstract getIMSI(I)Ljava/lang/String;
.end method

.method public abstract getLatitude(I)I
.end method

.method public abstract getLocationID(I)I
.end method

.method public abstract getLongitude(I)I
.end method

.method public abstract getPhoneModel()Ljava/lang/String;
.end method

.method public abstract getSMC(I)Ljava/lang/String;
.end method

.method public abstract getSWVersion()Ljava/lang/String;
.end method

.method public abstract getSystemID(I)Ljava/lang/String;
.end method

.method public abstract isCDMANetwork(I)Z
.end method

.method public abstract isNetworkAvailable(I)Z
.end method
