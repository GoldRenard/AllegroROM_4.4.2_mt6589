.class public Lcom/mediatek/gemini/simui/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;
    }
.end annotation


# static fields
.field public static final EXTRA_3G_CARD_ONLY:Ljava/lang/String; = "EXTRA_3G_CARD_ONLY"

.field public static final EXTRA_SLOTID:Ljava/lang/String; = "slotId"

.field public static final EXTRA_TITLE_NAME:Ljava/lang/String; = "EXTRA_TITME_NAME"

.field public static final GEMINI_BASEBAND_PROP:[Ljava/lang/String;

.field public static final IMAGE_GRAY:I = 0x4b

.field public static final INTERNET_COLOR_ID:I

.field public static final MODEM_3G:I = 0x3

.field public static final MODEM_MASK_EDGE:I = 0x2

.field public static final MODEM_MASK_GPRS:I = 0x1

.field public static final MODEM_MASK_HSDPA:I = 0x10

.field public static final MODEM_MASK_HSUPA:I = 0x20

.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final MODEM_MASK_WCDMA:I = 0x4

.field public static final ORIGINAL_IMAGE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "CommonUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    array-length v0, v0

    sput v0, Lcom/mediatek/gemini/simui/CommonUtils;->INTERNET_COLOR_ID:I

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.baseband.capability"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.baseband.capability2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.baseband.capability3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.baseband.capability4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gemini/simui/CommonUtils;->GEMINI_BASEBAND_PROP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static get3GCapabilitySim()I
    .locals 6

    .prologue
    .line 202
    const/4 v2, -0x1

    .line 203
    .local v2, "slotId":I
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 205
    .local v1, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyEx;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 209
    :goto_0
    const-string v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoCallDefaultSIM()---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CommonUtils"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static get3GSimCard(Landroid/app/Activity;)Ljava/util/List;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v4, "siminfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 173
    .local v3, "simInserted":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 174
    .local v2, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Lcom/mediatek/gemini/simui/CommonUtils;->getBaseband(I)I

    move-result v0

    .line 175
    .local v0, "baseband":I
    const/4 v5, 0x3

    if-le v0, v5, :cond_0

    .line 176
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v0    # "baseband":I
    .end local v2    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-object v4
.end method

.method public static getBaseband(I)I
    .locals 7
    .param p0, "slot"    # I

    .prologue
    .line 184
    sget-object v4, Lcom/mediatek/gemini/simui/CommonUtils;->GEMINI_BASEBAND_PROP:[Ljava/lang/String;

    aget-object v3, v4, p0

    .line 186
    .local v3, "propertyKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 188
    .local v0, "baseband":I
    :try_start_0
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "capability":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    .end local v1    # "capability":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "CommonUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v4, "CommonUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[propertyKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v4, "CommonUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[baseband = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CommonUtils"

    const-string v5, "get base band error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSimColorLightResource(I)I
    .locals 2
    .param p0, "colorId"    # I

    .prologue
    .line 125
    const/4 v0, -0x1

    .line 126
    .local v0, "bgColor":I
    if-ltz p0, :cond_1

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 127
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    aget v0, v1, p0

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    sget v1, Lcom/mediatek/gemini/simui/CommonUtils;->INTERNET_COLOR_ID:I

    if-ne p0, v1, :cond_0

    .line 129
    const v0, 0x20200d9

    goto :goto_0
.end method

.method public static getSimColorResource(I)I
    .locals 2
    .param p0, "colorId"    # I

    .prologue
    .line 103
    const/4 v0, -0x1

    .line 104
    .local v0, "bgColor":I
    if-ltz p0, :cond_1

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 109
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    aget v0, v1, p0

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    sget v1, Lcom/mediatek/gemini/simui/CommonUtils;->INTERNET_COLOR_ID:I

    if-ne p0, v1, :cond_0

    .line 113
    const v0, 0x20200d9

    goto :goto_0
.end method

.method public static getSimIndicator(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 142
    invoke-static {p0}, Lcom/mediatek/gemini/simui/CommonUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    const-string v5, "CommonUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllRadioOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/mediatek/gemini/simui/CommonUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v4, 0x1

    .line 161
    :cond_0
    :goto_0
    return v4

    .line 147
    :cond_1
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 148
    .local v2, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    const-string v5, "phoneEx"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v3

    .line 149
    .local v3, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    const/4 v4, -0x1

    .line 150
    .local v4, "indicator":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 152
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "CommonUtils"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v5, "CommonUtils"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStatusResource(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v0, -0x1

    .line 94
    .local v0, "resId":I
    :goto_0
    return v0

    .line 70
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x2020107

    .line 71
    .restart local v0    # "resId":I
    goto :goto_0

    .line 73
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x20200f4

    .line 74
    .restart local v0    # "resId":I
    goto :goto_0

    .line 76
    .end local v0    # "resId":I
    :pswitch_3
    const v0, 0x20200ed

    .line 77
    .restart local v0    # "resId":I
    goto :goto_0

    .line 79
    .end local v0    # "resId":I
    :pswitch_4
    const v0, 0x202010e

    .line 80
    .restart local v0    # "resId":I
    goto :goto_0

    .line 82
    .end local v0    # "resId":I
    :pswitch_5
    const v0, 0x202010c

    .line 83
    .restart local v0    # "resId":I
    goto :goto_0

    .line 85
    .end local v0    # "resId":I
    :pswitch_6
    const v0, 0x20200e4

    .line 86
    .restart local v0    # "resId":I
    goto :goto_0

    .line 88
    .end local v0    # "resId":I
    :pswitch_7
    const v0, 0x202010d

    .line 89
    .restart local v0    # "resId":I
    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static isAllRadioOff(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "airMode":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dual_sim_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, "dualMode":I
    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static phoneNumString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "CommonUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneNumString, number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 223
    :cond_0
    return-object p0
.end method
