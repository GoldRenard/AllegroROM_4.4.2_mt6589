.class public Lcom/android/settings/tabsettings/SIMHelper;
.super Ljava/lang/Object;
.source "SIMHelper.java"


# static fields
.field private static final MOBILE_ICON_COUNT:I = 0x4

.field private static final SIM_STATUS_COUNT:I = 0x9

.field public static final TAG:Ljava/lang/String; = "SIMHelper"

.field private static iTelephony:Lcom/android/internal/telephony/ITelephony;

.field private static mBaseband:Ljava/lang/String;

.field private static mIsOptr:Ljava/lang/String;

.field private static mMobileIconResIds:[I

.field private static mSimInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mSimStatusViews:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mIsOptr:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mBaseband:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static checkSimCardDataConnBySlotId(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-static {p0, p1}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 192
    .local v0, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v2

    .line 195
    :cond_1
    const/4 v1, 0x0

    .line 196
    .local v1, "simState":I
    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 200
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static get3GSlot()I
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/android/settings/tabsettings/SIMHelper;->isCU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const/4 v0, -0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get3GSlotSimInfo(Landroid/content/Context;)Landroid/provider/Telephony$SIMInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    invoke-static {}, Lcom/android/settings/tabsettings/SIMHelper;->get3GSlot()I

    move-result v0

    .line 262
    .local v0, "slotId":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 263
    invoke-static {p0, v0}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDataConnectionIconIdBySlotId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, -0x1

    .line 176
    invoke-static {p0, p1}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 177
    .local v0, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    sget-object v2, Lcom/android/settings/tabsettings/SIMHelper;->mMobileIconResIds:[I

    if-nez v2, :cond_2

    .line 181
    invoke-static {}, Lcom/android/settings/tabsettings/SIMHelper;->initMobileIcons()V

    .line 183
    :cond_2
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-eq v2, v1, :cond_0

    .line 186
    sget-object v1, Lcom/android/settings/tabsettings/SIMHelper;->mMobileIconResIds:[I

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v1, v1, v2

    goto :goto_0
.end method

.method public static getDefaultSIM(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessType"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSIMColorIdBySlot(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 155
    .local v0, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 156
    const/4 v1, -0x1

    .line 158
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    goto :goto_0
.end method

.method public static getSIMIdBySlot(Landroid/content/Context;I)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 147
    .local v0, "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 148
    const-wide/16 v1, 0x0

    .line 150
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto :goto_0
.end method

.method public static getSIMInfo(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # J

    .prologue
    .line 71
    sget-object v2, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    .line 74
    :cond_1
    sget-object v2, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 75
    .local v1, "info":Landroid/provider/Telephony$SIMInfo;
    iget-wide v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 79
    .end local v1    # "info":Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 90
    sget-object v3, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    .line 93
    :cond_1
    sget-object v3, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    if-nez v3, :cond_2

    move-object v1, v2

    .line 99
    :goto_0
    return-object v1

    .line 94
    :cond_2
    sget-object v3, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 95
    .local v1, "info":Landroid/provider/Telephony$SIMInfo;
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v3, p1, :cond_3

    goto :goto_0

    .end local v1    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_4
    move-object v1, v2

    .line 99
    goto :goto_0
.end method

.method public static getSIMInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/android/settings/tabsettings/SIMHelper;->getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    .line 60
    :cond_1
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    return-object v0
.end method

.method public static getSIMStateIcon(I)I
    .locals 2
    .param p0, "simStatus"    # I

    .prologue
    const/4 v0, -0x1

    .line 166
    if-le p0, v0, :cond_0

    const/16 v1, 0x9

    if-lt p0, v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    if-nez v0, :cond_2

    .line 170
    invoke-static {}, Lcom/android/settings/tabsettings/SIMHelper;->initStatusIcons()V

    .line 172
    :cond_2
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getSIMStateIcon(Landroid/provider/Telephony$SIMInfo;)I
    .locals 1
    .param p0, "simInfo"    # Landroid/provider/Telephony$SIMInfo;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method private static getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "simInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 105
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v4, v3, :cond_0

    .line 106
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 107
    .local v1, "temp1":Landroid/provider/Telephony$SIMInfo;
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 108
    .local v2, "temp2":Landroid/provider/Telephony$SIMInfo;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v1    # "temp1":Landroid/provider/Telephony$SIMInfo;
    .end local v2    # "temp2":Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v0
.end method

.method public static initMobileIcons()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public static initStatusIcons()V
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    if-nez v0, :cond_0

    .line 123
    const/16 v0, 0x9

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    .line 124
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    const/4 v1, 0x1

    const v2, 0x2020107

    aput v2, v0, v1

    .line 125
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    const/4 v1, 0x2

    const v2, 0x20200f4

    aput v2, v0, v1

    .line 126
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    const/4 v1, 0x3

    const v2, 0x20200ed

    aput v2, v0, v1

    .line 127
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    const/4 v1, 0x4

    const v2, 0x202010e

    aput v2, v0, v1

    .line 128
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    const/4 v1, 0x6

    const v2, 0x202010c

    aput v2, v0, v1

    .line 129
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    const/4 v1, 0x7

    const v2, 0x20200e4

    aput v2, v0, v1

    .line 130
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimStatusViews:[I

    const/16 v1, 0x8

    const v2, 0x202010d

    aput v2, v0, v1

    .line 132
    :cond_0
    return-void
.end method

.method public static is3GSupported()Z
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mBaseband:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mBaseband:Ljava/lang/String;

    .line 210
    :cond_0
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mBaseband:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mBaseband:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mBaseband:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCU()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public static isLenovoCU()Z
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mIsOptr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mIsOptr:Ljava/lang/String;

    .line 273
    :cond_0
    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mIsOptr:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mIsOptr:Ljava/lang/String;

    const-string v1, "OP02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultSIM(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessType"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 54
    return-void
.end method

.method public static updateSIMInfos(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    .line 118
    invoke-static {p0}, Lcom/android/settings/tabsettings/SIMHelper;->getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/tabsettings/SIMHelper;->mSimInfos:Ljava/util/List;

    .line 119
    return-void
.end method
