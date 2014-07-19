.class public abstract Lcom/android/services/telephony/common/ICallCommandService$Stub;
.super Landroid/os/Binder;
.source "ICallCommandService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ICallCommandService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ICallCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ICallCommandService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.services.telephony.common.ICallCommandService"

.field static final TRANSACTION_acceptIncomingCallByVoiceCommand:I = 0x36

.field static final TRANSACTION_acceptVtCallWithVoiceOnly:I = 0x3a

.field static final TRANSACTION_addCall:I = 0x8

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_clearVoiceCommandHandler:I = 0x35

.field static final TRANSACTION_decBrightness:I = 0x2f

.field static final TRANSACTION_decContrast:I = 0x31

.field static final TRANSACTION_decZoom:I = 0x2c

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_enlargeDisplaySurface:I = 0x18

.field static final TRANSACTION_explicitCallTransfer:I = 0x2b

.field static final TRANSACTION_hangupActiveAndAnswerWaiting:I = 0x2a

.field static final TRANSACTION_hangupAllCalls:I = 0x28

.field static final TRANSACTION_hangupHoldingCall:I = 0x29

.field static final TRANSACTION_hideLocal:I = 0x1b

.field static final TRANSACTION_hold:I = 0x5

.field static final TRANSACTION_incBrightness:I = 0x2e

.field static final TRANSACTION_incContrast:I = 0x30

.field static final TRANSACTION_incZoom:I = 0x2d

.field static final TRANSACTION_incomingVTCall:I = 0x27

.field static final TRANSACTION_lockPeerVideo:I = 0x22

.field static final TRANSACTION_merge:I = 0x6

.field static final TRANSACTION_mute:I = 0x9

.field static final TRANSACTION_onDisconnected:I = 0x15

.field static final TRANSACTION_onUiShowing:I = 0x40

.field static final TRANSACTION_onUserInput:I = 0x21

.field static final TRANSACTION_playDtmfTone:I = 0xb

.field static final TRANSACTION_postDialCancel:I = 0xe

.field static final TRANSACTION_postDialWaitContinue:I = 0xf

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_restartRinger:I = 0x39

.field static final TRANSACTION_savePeerPhoto:I = 0x1a

.field static final TRANSACTION_secondaryHoldPhotoClicked:I = 0x3d

.field static final TRANSACTION_secondaryPhotoClicked:I = 0x3c

.field static final TRANSACTION_separateCall:I = 0x4

.field static final TRANSACTION_setAudioMode:I = 0xd

.field static final TRANSACTION_setColorEffect:I = 0x1d

.field static final TRANSACTION_setDisplay:I = 0x16

.field static final TRANSACTION_setLocalView:I = 0x1c

.field static final TRANSACTION_setNightMode:I = 0x1e

.field static final TRANSACTION_setSystemBarNavigationEnabled:I = 0x10

.field static final TRANSACTION_setUpVoiceCommandService:I = 0x33

.field static final TRANSACTION_setVTClose:I = 0x14

.field static final TRANSACTION_setVTConnected:I = 0x13

.field static final TRANSACTION_setVTOpen:I = 0x11

.field static final TRANSACTION_setVTReady:I = 0x12

.field static final TRANSACTION_setVTVisible:I = 0x20

.field static final TRANSACTION_setVTVoiceAnswerRelated:I = 0x3b

.field static final TRANSACTION_setVideoQuality:I = 0x1f

.field static final TRANSACTION_silenceRinger:I = 0x38

.field static final TRANSACTION_speaker:I = 0xa

.field static final TRANSACTION_startVoiceRecording:I = 0x25

.field static final TRANSACTION_startVtRecording:I = 0x24

.field static final TRANSACTION_stopDtmfTone:I = 0xc

.field static final TRANSACTION_stopRecording:I = 0x26

.field static final TRANSACTION_stopVoiceCommand:I = 0x34

.field static final TRANSACTION_swap:I = 0x7

.field static final TRANSACTION_switchCalls:I = 0x3f

.field static final TRANSACTION_switchCamera:I = 0x19

.field static final TRANSACTION_switchDisplaySurface:I = 0x17

.field static final TRANSACTION_switchRingtoneForDualTalk:I = 0x3e

.field static final TRANSACTION_unbindAfterUiUpdate:I = 0x41

.field static final TRANSACTION_unlockPeerVideo:I = 0x23

.field static final TRANSACTION_updatePicToReplaceLocalVideo:I = 0x32

.field static final TRANSACTION_updatePowerForSmartBook:I = 0x42

.field static final TRANSACTION_updateVoiceCommand:I = 0x37


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallCommandService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.android.services.telephony.common.ICallCommandService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ICallCommandService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/services/telephony/common/ICallCommandService;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ICallCommandService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 48
    :sswitch_0
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->answerCall(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    sget-object v5, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 70
    .local v0, "_arg0":Lcom/android/services/telephony/common/Call;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 72
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    goto :goto_1

    .line 78
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    :sswitch_3
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->disconnectCall(I)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->separateCall(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 99
    .restart local v1    # "_arg1":Z
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->hold(IZ)V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :sswitch_6
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->merge()V

    goto :goto_0

    .line 110
    :sswitch_7
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->swap()V

    goto :goto_0

    .line 116
    :sswitch_8
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->addCall()V

    goto :goto_0

    .line 122
    :sswitch_9
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 125
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->mute(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v1

    .line 124
    goto :goto_2

    .line 130
    :sswitch_a
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 133
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->speaker(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v1

    .line 132
    goto :goto_3

    .line 138
    :sswitch_b
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v0, v5

    .line 142
    .local v0, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v1, v4

    .line 143
    .restart local v1    # "_arg1":Z
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->playDtmfTone(CZ)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":C
    .end local v1    # "_arg1":Z
    :sswitch_c
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->stopDtmfTone()V

    goto/16 :goto_0

    .line 154
    :sswitch_d
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setAudioMode(I)V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->postDialCancel(I)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->postDialWaitContinue(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v0, v4

    .line 181
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setSystemBarNavigationEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_6
    move v0, v1

    .line 180
    goto :goto_4

    .line 186
    :sswitch_11
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setVTOpen(I)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setVTReady()V

    goto/16 :goto_0

    .line 200
    :sswitch_13
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setVTConnected()V

    goto/16 :goto_0

    .line 206
    :sswitch_14
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setVTClose()V

    goto/16 :goto_0

    .line 212
    :sswitch_15
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->onDisconnected()V

    goto/16 :goto_0

    .line 218
    :sswitch_16
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 221
    sget-object v5, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 227
    .local v0, "_arg0":Landroid/view/Surface;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 228
    sget-object v5, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 233
    .local v1, "_arg1":Landroid/view/Surface;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Landroid/view/Surface;
    .end local v1    # "_arg1":Landroid/view/Surface;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_5

    .line 231
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/view/Surface;
    goto :goto_6

    .line 238
    .end local v0    # "_arg0":Landroid/view/Surface;
    .end local v1    # "_arg1":Landroid/view/Surface;
    :sswitch_17
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->switchDisplaySurface()V

    goto/16 :goto_0

    .line 244
    :sswitch_18
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v4

    .line 247
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->enlargeDisplaySurface(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_9
    move v0, v1

    .line 246
    goto :goto_7

    .line 252
    :sswitch_19
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->switchCamera()V

    goto/16 :goto_0

    .line 258
    :sswitch_1a
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->savePeerPhoto()V

    goto/16 :goto_0

    .line 264
    :sswitch_1b
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v4

    .line 267
    .restart local v0    # "_arg0":Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->hideLocal(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_a
    move v0, v1

    .line 266
    goto :goto_8

    .line 272
    :sswitch_1c
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setLocalView(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    move v0, v4

    .line 293
    .local v0, "_arg0":Z
    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setNightMode(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v1

    .line 292
    goto :goto_9

    .line 298
    :sswitch_1f
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setVideoQuality(I)V

    goto/16 :goto_0

    .line 306
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    move v0, v4

    .line 309
    .local v0, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setVTVisible(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_c
    move v0, v1

    .line 308
    goto :goto_a

    .line 314
    :sswitch_21
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->onUserInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_22
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->lockPeerVideo()V

    goto/16 :goto_0

    .line 328
    :sswitch_23
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->unlockPeerVideo()V

    goto/16 :goto_0

    .line 334
    :sswitch_24
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 339
    .local v1, "_arg1":J
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->startVtRecording(IJ)V

    goto/16 :goto_0

    .line 344
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :sswitch_25
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->startVoiceRecording(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->stopRecording()V

    goto/16 :goto_0

    .line 358
    :sswitch_27
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->incomingVTCall(I)V

    goto/16 :goto_0

    .line 366
    .end local v0    # "_arg0":I
    :sswitch_28
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->hangupAllCalls()V

    goto/16 :goto_0

    .line 372
    :sswitch_29
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->hangupHoldingCall()V

    goto/16 :goto_0

    .line 378
    :sswitch_2a
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->hangupActiveAndAnswerWaiting()V

    goto/16 :goto_0

    .line 384
    :sswitch_2b
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->explicitCallTransfer()V

    goto/16 :goto_0

    .line 390
    :sswitch_2c
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->decZoom()V

    goto/16 :goto_0

    .line 396
    :sswitch_2d
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->incZoom()V

    goto/16 :goto_0

    .line 402
    :sswitch_2e
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->incBrightness()V

    goto/16 :goto_0

    .line 408
    :sswitch_2f
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->decBrightness()V

    goto/16 :goto_0

    .line 414
    :sswitch_30
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->incContrast()V

    goto/16 :goto_0

    .line 420
    :sswitch_31
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->decContrast()V

    goto/16 :goto_0

    .line 426
    :sswitch_32
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->updatePicToReplaceLocalVideo()V

    goto/16 :goto_0

    .line 432
    :sswitch_33
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setUpVoiceCommandService()V

    goto/16 :goto_0

    .line 438
    :sswitch_34
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->stopVoiceCommand()V

    goto/16 :goto_0

    .line 444
    :sswitch_35
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->clearVoiceCommandHandler()V

    goto/16 :goto_0

    .line 450
    :sswitch_36
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->acceptIncomingCallByVoiceCommand(I)V

    goto/16 :goto_0

    .line 458
    .end local v0    # "_arg0":I
    :sswitch_37
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->updateVoiceCommand()V

    goto/16 :goto_0

    .line 464
    :sswitch_38
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->silenceRinger()V

    goto/16 :goto_0

    .line 470
    :sswitch_39
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->restartRinger()V

    goto/16 :goto_0

    .line 476
    :sswitch_3a
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->acceptVtCallWithVoiceOnly()V

    goto/16 :goto_0

    .line 482
    :sswitch_3b
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    move v0, v4

    .line 486
    .local v0, "_arg0":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setVTVoiceAnswerRelated(ZLjava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_d
    move v0, v1

    .line 484
    goto :goto_b

    .line 492
    :sswitch_3c
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->secondaryPhotoClicked()V

    goto/16 :goto_0

    .line 498
    :sswitch_3d
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->secondaryHoldPhotoClicked()V

    goto/16 :goto_0

    .line 504
    :sswitch_3e
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->switchRingtoneForDualTalk()V

    goto/16 :goto_0

    .line 510
    :sswitch_3f
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->switchCalls()V

    goto/16 :goto_0

    .line 516
    :sswitch_40
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v0, v4

    .line 519
    .restart local v0    # "_arg0":Z
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->onUiShowing(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_e
    move v0, v1

    .line 518
    goto :goto_c

    .line 524
    :sswitch_41
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->unbindAfterUiUpdate()V

    goto/16 :goto_0

    .line 530
    :sswitch_42
    const-string v5, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    move v0, v4

    .line 533
    .restart local v0    # "_arg0":Z
    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->updatePowerForSmartBook(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_f
    move v0, v1

    .line 532
    goto :goto_d

    .line 44
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
