.class public final Lcom/android/services/telephony/common/CallIdentification;
.super Ljava/lang/Object;
.source "CallIdentification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/CallIdentification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallType:I

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mIsIncoming:Z

.field private mNumber:Ljava/lang/String;

.field private mNumberPresentation:I

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/CallIdentification$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/CallIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 40
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 173
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 175
    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 46
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 40
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 173
    iput v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 174
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 175
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 129
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 130
    .local v0, "val":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 131
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/CallIdentification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/CallIdentification$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/CallIdentification;)V
    .locals 2
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 40
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 173
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 175
    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 50
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 51
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 52
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 53
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 54
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 56
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 57
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 58
    iget-boolean v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    return v0
.end method

.method public isVideoCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 178
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallType(I)V
    .locals 0
    .param p1, "callType"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 191
    return-void
.end method

.method public setCnapName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCnapNamePresentation(I)V
    .locals 0
    .param p1, "presentation"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 88
    return-void
.end method

.method public setIsIncomingFlag(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 187
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 0
    .param p1, "presentation"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 80
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumberPresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapName"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapNamePresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSlotId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoCallFlag"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsIncoming"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v1, 0x1

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    aput-boolean v2, v0, v1

    .line 113
    .local v0, "val":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 115
    return-void
.end method
