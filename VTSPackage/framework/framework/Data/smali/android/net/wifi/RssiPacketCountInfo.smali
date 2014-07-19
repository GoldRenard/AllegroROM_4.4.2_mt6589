.class public Landroid/net/wifi/RssiPacketCountInfo;
.super Ljava/lang/Object;
.source "RssiPacketCountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RssiPacketCountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aat:J

.field public apt:J

.field public fail_cnt:J

.field public mLinkspeed:I

.field public per:J

.field public rACKFailureCount:J

.field public rFCSErrorCount:J

.field public rFailedCount:J

.field public rMultipleRetryCount:J

.field public rRetryCount:J

.field public rate:D

.field public rssi:I

.field public timeout_cnt:J

.field public total_cnt:J

.field public txbad:I

.field public txgood:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Landroid/net/wifi/RssiPacketCountInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/RssiPacketCountInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RssiPacketCountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 95
    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFCSErrorCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rACKFailureCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->aat:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->apt:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->timeout_cnt:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->fail_cnt:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->total_cnt:J

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->per:J

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rate:D

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rACKFailureCount:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFCSErrorCount:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->per:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rate:D

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->total_cnt:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->fail_cnt:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->timeout_cnt:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->apt:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->aat:J

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/RssiPacketCountInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/wifi/RssiPacketCountInfo$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/net/wifi/RssiPacketCountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 126
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFailedCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rRetryCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rMultipleRetryCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rACKFailureCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rFCSErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->mLinkspeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->per:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 140
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->total_cnt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->fail_cnt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->timeout_cnt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->apt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->aat:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    return-void
.end method
