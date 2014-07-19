.class public final Lcom/android/services/telephony/common/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/Call$DisconnectCause;,
        Lcom/android/services/telephony/common/Call$Capabilities;,
        Lcom/android/services/telephony/common/Call$State;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_SIP:I = 0x2

.field public static final CALL_TYPE_VIDEO:I = 0x1

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CALL_ID:I = -0x1

.field public static final MAX_CONFERENCED_CALLS:I = 0x5

.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I

.field private static final STATE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCapabilities:I

.field private mChildCallIds:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTime:J

.field private mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field private mGatewayNumber:Ljava/lang/String;

.field private mGatewayPackage:Ljava/lang/String;

.field private mIdentification:Lcom/android/services/telephony/common/CallIdentification;

.field private mPhoneId:I

.field private mPhoneType:I

.field private mRejectMessage:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CALL_WAITING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DIALING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REDIALING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IDLE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INCOMING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ONHOLD"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INVALID"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISCONNECTING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISCONNECTED"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONFERENCED"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    .line 192
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    .line 194
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    .line 196
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    .line 198
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_PAYPHONE:I

    .line 424
    new-instance v0, Lcom/android/services/telephony/common/Call$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/Call$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 209
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 218
    invoke-static {}, Lcom/google/android/collect/Sets;->newSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 480
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 483
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 227
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    .line 228
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification;

    iget v1, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-direct {v0, v1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    .line 229
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 209
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 218
    invoke-static {}, Lcom/google/android/collect/Sets;->newSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 480
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 483
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/Call$DisconnectCause;->valueOf(Ljava/lang/String;)Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 403
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    .line 406
    const-class v0, Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/CallIdentification;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/Call$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/Call$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/Call;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 209
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 218
    invoke-static {}, Lcom/google/android/collect/Sets;->newSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 480
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 483
    iput v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 232
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mCallId:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    .line 233
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification;

    iget-object v1, p1, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-direct {v0, v1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(Lcom/android/services/telephony/common/CallIdentification;)V

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    .line 234
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mState:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 235
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 236
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    .line 237
    iget-wide v0, p1, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 238
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    .line 239
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 245
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 246
    iget v0, p1, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 248
    return-void
.end method


# virtual methods
.method public addCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 323
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->setCapabilities(I)V

    .line 324
    return-void
.end method

.method public addChildId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 319
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getCallType()I

    move-result v0

    return v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    return v0
.end method

.method public getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getCnapName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getCnapNamePresentation()I

    move-result v0

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 303
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    goto :goto_0
.end method

.method public getGatewayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentification()Lcom/android/services/telephony/common/CallIdentification;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    return v0
.end method

.method public getRejectCallNotifyMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getSlotId()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    return v0
.end method

.method public getStateText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    iget v1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isConferenceCall()Z
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->isIncoming()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->isVideoCall()Z

    move-result v0

    return v0
.end method

.method public removeAllChildren()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 340
    return-void
.end method

.method public removeChildId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public setCallType(I)V
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setCallType(I)V

    .line 499
    return-void
.end method

.method public setCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .prologue
    .line 315
    and-int/lit16 v0, p1, 0x7fff

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    .line 316
    return-void
.end method

.method public setCnapName(Ljava/lang/String;)V
    .locals 1
    .param p1, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setCnapName(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public setCnapNamePresentation(I)V
    .locals 1
    .param p1, "presentation"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setCnapNamePresentation(I)V

    .line 288
    return-void
.end method

.method public setConnectTime(J)V
    .locals 0
    .param p1, "connectTime"    # J

    .prologue
    .line 327
    iput-wide p1, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    .line 328
    return-void
.end method

.method public setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V
    .locals 0
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 308
    return-void
.end method

.method public setGatewayNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setGatewayPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setIsIncomingFlag(Z)V
    .locals 1
    .param p1, "isIncoming"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setIsIncomingFlag(Z)V

    .line 495
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setNumber(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 1
    .param p1, "presentation"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setNumberPresentation(I)V

    .line 280
    return-void
.end method

.method public setPhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    .line 538
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    .line 539
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .prologue
    .line 530
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    .line 531
    return-void
.end method

.method public setRejectCallNotifyMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setSlotId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/CallIdentification;->setSlotId(I)V

    .line 511
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 440
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mState"

    sget-object v2, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDisconnectCause"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCapabilities"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConnectTime"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mChildCallIds"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGatewayNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGatewayPackage"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIdentification"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRejectMessage"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPhoneType"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPhoneId"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCapabilities()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 381
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 382
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 387
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mRejectMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    return-void
.end method
