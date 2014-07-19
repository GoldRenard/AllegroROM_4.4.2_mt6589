.class public abstract Lcom/android/services/telephony/common/ICallHandlerService$Stub;
.super Landroid/os/Binder;
.source "ICallHandlerService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ICallHandlerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ICallHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ICallHandlerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.services.telephony.common.ICallHandlerService"

.field static final TRANSACTION_acceptIncomingCallByVoiceCommand:I = 0x14

.field static final TRANSACTION_answerVTCallPre:I = 0x11

.field static final TRANSACTION_applyPhoneTheme:I = 0x19

.field static final TRANSACTION_bringToForeground:I = 0x7

.field static final TRANSACTION_dialVTCallSuccess:I = 0x10

.field static final TRANSACTION_onAudioModeChange:I = 0x5

.field static final TRANSACTION_onDisconnect:I = 0x4

.field static final TRANSACTION_onIncoming:I = 0x2

.field static final TRANSACTION_onPhoneRaised:I = 0x17

.field static final TRANSACTION_onPostDialWait:I = 0x8

.field static final TRANSACTION_onStorageFull:I = 0xc

.field static final TRANSACTION_onSuppServiceFailed:I = 0xe

.field static final TRANSACTION_onSupportedAudioModeChange:I = 0x6

.field static final TRANSACTION_onUpdate:I = 0x3

.field static final TRANSACTION_onUpdateRecordState:I = 0xd

.field static final TRANSACTION_onVTConnected:I = 0xb

.field static final TRANSACTION_onVTOpen:I = 0x9

.field static final TRANSACTION_onVTReady:I = 0xa

.field static final TRANSACTION_onVTStateChanged:I = 0x12

.field static final TRANSACTION_pushVTManagerParams:I = 0x13

.field static final TRANSACTION_pushVTSettingParams:I = 0xf

.field static final TRANSACTION_receiveVoiceCommandNotificationMessage:I = 0x16

.field static final TRANSACTION_rejectIncomingCallByVoiceCommand:I = 0x15

.field static final TRANSACTION_startCallService:I = 0x1

.field static final TRANSACTION_updateDualtalkCallStatus:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallHandlerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "com.android.services.telephony.common.ICallHandlerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/android/services/telephony/common/ICallHandlerService;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ICallHandlerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
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
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 51
    :sswitch_0
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallCommandService;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Lcom/android/services/telephony/common/ICallCommandService;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/ICallCommandService;
    :sswitch_2
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    sget-object v5, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 73
    .local v0, "_arg0":Lcom/android/services/telephony/common/Call;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 74
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    goto :goto_1

    .line 79
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    :sswitch_3
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    sget-object v5, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 87
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    :sswitch_4
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    sget-object v5, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 95
    .restart local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    goto :goto_2

    .line 100
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/Call;
    :sswitch_5
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 105
    .local v2, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onAudioModeChange(IZ)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    :sswitch_6
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onSupportedAudioModeChange(I)V

    goto :goto_0

    .line 118
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 121
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->bringToForeground(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v2

    .line 120
    goto :goto_3

    .line 126
    :sswitch_8
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onPostDialWait(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onVTOpen()V

    goto/16 :goto_0

    .line 142
    :sswitch_a
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onVTReady()V

    goto/16 :goto_0

    .line 148
    :sswitch_b
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onVTConnected()V

    goto/16 :goto_0

    .line 154
    :sswitch_c
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onStorageFull()V

    goto/16 :goto_0

    .line 160
    :sswitch_d
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onUpdateRecordState(II)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_e
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onSuppServiceFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    sget-object v5, Lcom/android/services/telephony/common/VTSettingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/VTSettingParams;

    .line 187
    .local v0, "_arg0":Lcom/android/services/telephony/common/VTSettingParams;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 188
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 193
    .local v2, "_arg1":Landroid/graphics/Bitmap;
    :goto_5
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->pushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 184
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/VTSettingParams;
    .end local v2    # "_arg1":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/services/telephony/common/VTSettingParams;
    goto :goto_4

    .line 191
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 198
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/VTSettingParams;
    .end local v2    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_10
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->dialVTCallSuccess()V

    goto/16 :goto_0

    .line 204
    :sswitch_11
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->answerVTCallPre()V

    goto/16 :goto_0

    .line 210
    :sswitch_12
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onVTStateChanged(I)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":I
    :sswitch_13
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 221
    sget-object v5, Lcom/android/services/telephony/common/VTManagerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/VTManagerParams;

    .line 226
    .local v0, "_arg0":Lcom/android/services/telephony/common/VTManagerParams;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->pushVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/VTManagerParams;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/services/telephony/common/VTManagerParams;
    goto :goto_6

    .line 231
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/VTManagerParams;
    :sswitch_14
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->acceptIncomingCallByVoiceCommand()V

    goto/16 :goto_0

    .line 237
    :sswitch_15
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->rejectIncomingCallByVoiceCommand()V

    goto/16 :goto_0

    .line 243
    :sswitch_16
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onPhoneRaised()V

    goto/16 :goto_0

    .line 257
    :sswitch_18
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 260
    sget-object v5, Lcom/android/services/telephony/common/DualtalkCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 265
    .local v0, "_arg0":Lcom/android/services/telephony/common/DualtalkCallInfo;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V

    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/DualtalkCallInfo;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/services/telephony/common/DualtalkCallInfo;
    goto :goto_7

    .line 270
    .end local v0    # "_arg0":Lcom/android/services/telephony/common/DualtalkCallInfo;
    :sswitch_19
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->applyPhoneTheme(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
