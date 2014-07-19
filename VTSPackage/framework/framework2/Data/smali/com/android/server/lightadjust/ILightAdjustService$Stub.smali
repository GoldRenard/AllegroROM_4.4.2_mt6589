.class public abstract Lcom/android/server/lightadjust/ILightAdjustService$Stub;
.super Landroid/os/Binder;
.source "ILightAdjustService.java"

# interfaces
.implements Lcom/android/server/lightadjust/ILightAdjustService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/ILightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/ILightAdjustService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.server.lightadjust.ILightAdjustService"

.field static final TRANSACTION_getEnviromentalLightLevel:I = 0xc

.field static final TRANSACTION_getScreenBrightnessValue:I = 0xd

.field static final TRANSACTION_refreshBrightnessRightNow:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x10

.field static final TRANSACTION_resetAllParams:I = 0xf

.field static final TRANSACTION_setBacklightAdjustPolicy:I = 0x3

.field static final TRANSACTION_setBacklightValueUser:I = 0xe

.field static final TRANSACTION_setBrightAntiShakeInterval:I = 0x9

.field static final TRANSACTION_setBrightnessFadeSpeed:I = 0x5

.field static final TRANSACTION_setBrightnessStepSize:I = 0x6

.field static final TRANSACTION_setDarkAntiShakeInterval:I = 0xa

.field static final TRANSACTION_setFadeBrightnessChanges:I = 0x7

.field static final TRANSACTION_setProfile:I = 0x2

.field static final TRANSACTION_setScreenBrightnessPercentScope:I = 0x8

.field static final TRANSACTION_setSensorSampleRate:I = 0x4

.field static final TRANSACTION_setShowNotificationControllerPanel:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/lightadjust/ILightAdjustService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.android.server.lightadjust.ILightAdjustService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/server/lightadjust/ILightAdjustService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/server/lightadjust/ILightAdjustService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/server/lightadjust/ILightAdjustService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->refreshBrightnessRightNow()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setProfile(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setBacklightAdjustPolicy(I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setSensorSampleRate(I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setBrightnessFadeSpeed(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setBrightnessStepSize(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    .line 104
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setFadeBrightnessChanges(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Z
    :sswitch_8
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setScreenBrightnessPercentScope(II)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_9
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setBrightAntiShakeInterval(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setDarkAntiShakeInterval(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 142
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setShowNotificationControllerPanel(Z)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":Z
    :sswitch_c
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->getEnviromentalLightLevel()I

    move-result v2

    .line 150
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v2    # "_result":I
    :sswitch_d
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->getScreenBrightnessValue()I

    move-result v2

    .line 158
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v2    # "_result":I
    :sswitch_e
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->setBacklightValueUser(I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->resetAllParams()V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 180
    :sswitch_10
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/lightadjust/ILightAdjustCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/lightadjust/ILightAdjustCallback;

    move-result-object v0

    .line 183
    .local v0, "_arg0":Lcom/android/server/lightadjust/ILightAdjustCallback;
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->registerCallback(Lcom/android/server/lightadjust/ILightAdjustCallback;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":Lcom/android/server/lightadjust/ILightAdjustCallback;
    :sswitch_11
    const-string v4, "com.android.server.lightadjust.ILightAdjustService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/lightadjust/ILightAdjustCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/lightadjust/ILightAdjustCallback;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Lcom/android/server/lightadjust/ILightAdjustCallback;
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;->unregisterCallback(Lcom/android/server/lightadjust/ILightAdjustCallback;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
