.class Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
.super Ljava/lang/Object;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimItem"
.end annotation


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimId:J

.field public mSlot:I

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 3
    .param p1, "siminfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    iput-boolean v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 983
    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 984
    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    .line 985
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mDispalyNumberFormat:I

    .line 986
    iput v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 987
    iput v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSlot:I

    .line 988
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    .line 989
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimId:J

    .line 999
    iput-boolean v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 1000
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 1001
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    .line 1002
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mDispalyNumberFormat:I

    .line 1003
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 1004
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSlot:I

    .line 1005
    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimId:J

    .line 1006
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "simID"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 983
    iput-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 984
    iput-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    .line 985
    iput v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mDispalyNumberFormat:I

    .line 986
    iput v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 987
    iput v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSlot:I

    .line 988
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    .line 989
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimId:J

    .line 993
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 994
    iput p2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 995
    iput-boolean v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 996
    return-void
.end method
