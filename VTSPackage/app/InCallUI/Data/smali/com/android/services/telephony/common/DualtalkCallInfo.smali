.class public Lcom/android/services/telephony/common/DualtalkCallInfo;
.super Ljava/lang/Object;
.source "DualtalkCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/DualtalkCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCdmaPhoneCallState:I

.field private mHasDualHoldCallsOnly:Z

.field private mHasMultipleRingingCall:Z

.field private mIsCdmaAndGsmActive:Z

.field private mIsDualTalkMultipleHoldCase:Z

.field private mIsRingingWhenOutgoing:Z

.field private mIsSecondHoldCallVisible:Z

.field private mIsSecondaryCallVisible:Z

.field private mIsThreeWayCallOrigStateDialing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/services/telephony/common/DualtalkCallInfo$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/DualtalkCallInfo$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/DualtalkCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mCdmaPhoneCallState:I

    .line 43
    const/16 v1, 0x8

    new-array v0, v1, [Z

    .line 44
    .local v0, "values":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 45
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondHoldCallVisible:Z

    .line 46
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondaryCallVisible:Z

    .line 47
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsThreeWayCallOrigStateDialing:Z

    .line 48
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsCdmaAndGsmActive:Z

    .line 49
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsDualTalkMultipleHoldCase:Z

    .line 50
    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasDualHoldCallsOnly:Z

    .line 51
    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasMultipleRingingCall:Z

    .line 52
    const/4 v1, 0x7

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsRingingWhenOutgoing:Z

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/DualtalkCallInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/DualtalkCallInfo$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/DualtalkCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaPhoneCallState()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mCdmaPhoneCallState:I

    return v0
.end method

.method public getHasDualHoldCallsOnly()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasDualHoldCallsOnly:Z

    return v0
.end method

.method public getHasMultipleRingingCall()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasMultipleRingingCall:Z

    return v0
.end method

.method public getIsCdmaAndGsmActive()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsCdmaAndGsmActive:Z

    return v0
.end method

.method public getIsDualTalkMultipleHoldCase()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsDualTalkMultipleHoldCase:Z

    return v0
.end method

.method public getIsRingingWhenOutgoing()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsRingingWhenOutgoing:Z

    return v0
.end method

.method public getIsSecondHoldCallVisible()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondHoldCallVisible:Z

    return v0
.end method

.method public getIsSecondaryCallVisible()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondaryCallVisible:Z

    return v0
.end method

.method public getIsThreeWayCallOrigStateDialing()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsThreeWayCallOrigStateDialing:Z

    return v0
.end method

.method public setCdmaPhoneCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mCdmaPhoneCallState:I

    .line 91
    return-void
.end method

.method public setHasDualHoldCallsOnly(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasDualHoldCallsOnly:Z

    .line 139
    return-void
.end method

.method public setHasMultipleRingingCall(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasMultipleRingingCall:Z

    .line 147
    return-void
.end method

.method public setIsCdmaAndGsmActive(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsCdmaAndGsmActive:Z

    .line 123
    return-void
.end method

.method public setIsDualTalkMultipleHoldCase(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsDualTalkMultipleHoldCase:Z

    .line 131
    return-void
.end method

.method public setIsRingingWhenOutgoing(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsRingingWhenOutgoing:Z

    .line 155
    return-void
.end method

.method public setIsSecondHoldCallVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondHoldCallVisible:Z

    .line 99
    return-void
.end method

.method public setIsSecondaryCallVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondaryCallVisible:Z

    .line 107
    return-void
.end method

.method public setIsThreeWayCallOrigStateDialing(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsThreeWayCallOrigStateDialing:Z

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCdmaPhoneCallState"

    iget v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mCdmaPhoneCallState:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsSecondHoldCallVisible"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondHoldCallVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsSecondaryCallVisible"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondaryCallVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsThreeWayCallOrigStateDialing"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsThreeWayCallOrigStateDialing:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsCdmaAndGsmActive"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsCdmaAndGsmActive:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsDualTalkMultipleHoldCase"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsDualTalkMultipleHoldCase:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mhasDualHoldCallsOnly"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasDualHoldCallsOnly:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mhasMultipleRingingCall"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasMultipleRingingCall:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsRingingWhenOutgoing"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsRingingWhenOutgoing:Z

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
    .line 29
    iget v1, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mCdmaPhoneCallState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    const/16 v1, 0x8

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondHoldCallVisible:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsSecondaryCallVisible:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsThreeWayCallOrigStateDialing:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsCdmaAndGsmActive:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsDualTalkMultipleHoldCase:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasDualHoldCallsOnly:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mHasMultipleRingingCall:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/services/telephony/common/DualtalkCallInfo;->mIsRingingWhenOutgoing:Z

    aput-boolean v2, v0, v1

    .line 35
    .local v0, "values":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 36
    return-void
.end method
