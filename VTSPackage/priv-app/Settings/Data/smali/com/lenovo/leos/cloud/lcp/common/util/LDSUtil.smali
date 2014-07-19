.class public final Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;
.super Ljava/lang/Object;
.source "LDSUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivitiesServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v0, "rpat001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppConfigServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v0, "rpco001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-string v0, "rpca001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCalendarsServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v2, "rpcd002"

    invoke-static {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "serverAddress":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 111
    const-string v2, "rpcd001"

    invoke-static {p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 118
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 114
    .restart local v0    # "i":I
    :cond_1
    aget-object v2, v1, v0

    const-string v3, "calendar/"

    const-string v4, "calendarapi/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCalllogServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v0, "rpms001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v0, "rpim001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefalutUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "rpbs001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://pbs.lenovomm.com/"

    .line 29
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string v0, "rfus001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://fus.lenovomm.com/"

    goto :goto_0

    .line 24
    :cond_1
    const-string v0, "rpay001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://pay.lenovomm.com/"

    goto :goto_0

    .line 25
    :cond_2
    const-string v0, "rpsb001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://psb.lenovomm.com/"

    goto :goto_0

    .line 26
    :cond_3
    const-string v0, "russ001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "https://uss.lenovomm.com/"

    goto :goto_0

    .line 27
    :cond_4
    const-string v0, "rwthr01"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "http://wth.lenovomm.com/"

    goto :goto_0

    .line 28
    :cond_5
    const-string v0, "rapp001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http://ams.lenovomm.com/"

    goto :goto_0

    .line 29
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMmsServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v0, "rmms001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetDiskServer1(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "rpnd001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetDiskServer2(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string v0, "rpnd002"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetDiskServer3(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string v0, "rpnd003"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v0, "rpcp001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 53
    if-nez p0, :cond_1

    .line 54
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 55
    .local v0, "result":[Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getDefalutUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 56
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 61
    .end local v0    # "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 59
    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    .line 61
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getServerAddresses(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "rwebdsk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "rpbs001"

    .line 43
    .end local p0    # "sid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "sid":Ljava/lang/String;
    :cond_1
    const-string v0, "rfw0001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "rfus001"

    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "pay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "rpay001"

    goto :goto_0

    .line 40
    :cond_3
    const-string v0, "psb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "rpsb001"

    goto :goto_0

    .line 41
    :cond_4
    const-string v0, "uss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "russ001"

    goto :goto_0

    .line 42
    :cond_5
    const-string v0, "wth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "rwthr01"

    goto :goto_0
.end method

.method public static getSmsServer(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v0, "rpms001"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
