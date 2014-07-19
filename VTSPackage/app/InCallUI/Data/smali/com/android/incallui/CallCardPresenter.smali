.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$VTTimingMode;,
        Lcom/android/incallui/CallCardPresenter$CallCardUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;"
    }
.end annotation


# static fields
.field private static final CALL_TIME_UPDATE_INTERVAL:J = 0x3e8L

.field private static final LENOVO_HOTLINE_NUMBER:Ljava/lang/String; = "4008188818"

.field private static final LENOVO_HOTLINE_NUMBER_1:Ljava/lang/String; = "4006709988"

.field private static final LENOVO_XIAMEN_HOTLINE_NUMBER:Ljava/lang/String; = "05925715315"

.field private static final NO_PHONE_ID:I = -0x1

.field private static final PRIMARY:I = 0x0

.field private static final SECONDARY:I = 0x1

.field private static final SECONDARY_INCOMING:I = 0x3

.field private static final SECONDARY_ONHOLD:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mCallTimer:Lcom/android/incallui/CallTimer;

.field private static sNumbersDefault:[Ljava/lang/String;

.field private static sNumbersNone:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrimary:Lcom/android/services/telephony/common/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/services/telephony/common/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

.field private mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

.field private mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    .line 1100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "12531"

    aput-object v1, v0, v2

    const-string v1, "+8612531"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->sNumbersNone:[Ljava/lang/String;

    .line 1101
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12535"

    aput-object v1, v0, v2

    const-string v1, "13800100011"

    aput-object v1, v0, v3

    const-string v1, "+8612535"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "+8613800100011"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->sNumbersDefault:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 98
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZLcom/android/services/telephony/common/CallIdentification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/android/services/telephony/common/CallIdentification;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZLcom/android/services/telephony/common/CallIdentification;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method private areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 5
    .param p1, "call1"    # Lcom/android/services/telephony/common/Call;
    .param p2, "call2"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 382
    goto :goto_0

    .line 385
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    if-ne v2, v4, :cond_4

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    if-eq v2, v4, :cond_4

    move v0, v1

    .line 387
    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static checkVTTimingMode(Ljava/lang/String;)Lcom/android/incallui/CallCardPresenter$VTTimingMode;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1113
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVTTimingMode - number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/incallui/CallCardPresenter;->sNumbersNone:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1116
    .local v1, "arrayListNone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/incallui/CallCardPresenter;->sNumbersDefault:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1118
    .local v0, "arrayListDefault":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1119
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVTTimingMode - return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_NONE:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    sget-object v2, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_NONE:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    .line 1128
    :goto_0
    return-object v2

    .line 1123
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1124
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVTTimingMode - return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    sget-object v2, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    goto :goto_0

    .line 1128
    :cond_1
    sget-object v2, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    goto :goto_0
.end method

.method private formatElapsedTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v11, 0xe10

    const-wide/16 v9, 0x3c

    .line 1156
    const-string v4, "%1$02d:%2$02d:%3$02d"

    .line 1157
    .local v4, "sElapsedFormatHMMSS":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 1158
    .local v0, "hours":J
    const-wide/16 v2, 0x0

    .line 1159
    .local v2, "minutes":J
    const-wide/16 v5, 0x0

    .line 1161
    .local v5, "seconds":J
    cmp-long v7, p1, v11

    if-ltz v7, :cond_0

    .line 1162
    div-long v0, p1, v11

    .line 1163
    mul-long v7, v0, v11

    sub-long/2addr p1, v7

    .line 1165
    :cond_0
    cmp-long v7, p1, v9

    if-ltz v7, :cond_1

    .line 1166
    div-long v2, p1, v9

    .line 1167
    mul-long v7, v2, v9

    sub-long/2addr p1, v7

    .line 1169
    :cond_1
    move-wide v5, p1

    .line 1170
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getCallDuration(Lcom/android/services/telephony/common/Call;)J
    .locals 8
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const-wide/16 v2, 0x0

    .line 1132
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1134
    sget-object v4, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_NONE:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->checkVTTimingMode(Ljava/lang/String;)Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-wide v2

    .line 1136
    :cond_1
    sget-object v4, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->checkVTTimingMode(Ljava/lang/String;)Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 1137
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v4, v4, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    cmp-long v4, v4, v2

    if-ltz v4, :cond_0

    .line 1140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-object v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    sub-long v2, v4, v6

    goto :goto_0

    .line 1148
    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v0

    .line 1149
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 1150
    .local v2, "duration":J
    goto :goto_0
.end method

.method static getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p0, "callList"    # Lcom/android/incallui/CallList;
    .param p1, "ignore"    # Lcom/android/services/telephony/common/Call;
    .param p2, "skipDisconnected"    # Z

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 489
    .local v0, "retval":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->isGsmPhoneFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getGsmActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 494
    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    move-object v1, v0

    .line 532
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .local v1, "retval":Lcom/android/services/telephony/common/Call;
    :goto_0
    return-object v1

    .line 501
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_1
    if-nez p2, :cond_3

    .line 502
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    move-object v1, v0

    .line 504
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0

    .line 506
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    move-object v1, v0

    .line 508
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0

    .line 514
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsCdmaAndGsmActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 517
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 518
    if-nez v0, :cond_4

    .line 519
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 525
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_6

    move-object v1, v0

    .line 526
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0

    .line 522
    .end local v1    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v0    # "retval":Lcom/android/services/telephony/common/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_1

    .line 530
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    move-object v1, v0

    .line 532
    .end local v0    # "retval":Lcom/android/services/telephony/common/Call;
    .restart local v1    # "retval":Lcom/android/services/telephony/common/Call;
    goto :goto_0
.end method

.method private getGatewayLabel()Ljava/lang/String;
    .locals 7

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 607
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 608
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02df

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 613
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 610
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 613
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isLenovoHotline(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const v0, 0x7f0a0379

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string v0, ""

    .line 657
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSecondaryCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p1, "fgCall"    # Lcom/android/services/telephony/common/Call;
    .param p2, "bgCall"    # Lcom/android/services/telephony/common/Call;
    .param p3, "bgSecondCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1022
    .local v0, "secondaryCall":Lcom/android/services/telephony/common/Call;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1023
    :cond_0
    const/4 v0, 0x0

    .line 1025
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1026
    move-object v0, p2

    .line 1031
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecondaryCallToShow()...secondaryCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    return-object v0

    .line 1027
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    move-object v0, p3

    goto :goto_0
.end method

.method private getSecondaryHoldCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p1, "fgCall"    # Lcom/android/services/telephony/common/Call;
    .param p2, "bgCall"    # Lcom/android/services/telephony/common/Call;
    .param p3, "bgSecondCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1038
    .local v0, "secondaryHoldCall":Lcom/android/services/telephony/common/Call;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1039
    :cond_0
    const/4 v0, 0x0

    .line 1041
    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1042
    move-object v0, p2

    .line 1046
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecondaryHoldCallToShow()...secondaryHoldCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    return-object v0

    .line 1043
    :cond_3
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1044
    move-object v0, p3

    goto :goto_0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 622
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGenericConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 462
    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLenovoHotline(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1174
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "phoneNumber":Ljava/lang/String;
    const-string v1, "4008188818"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "05925715315"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4006709988"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    :cond_0
    const/4 v1, 0x1

    .line 1181
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSamePhone(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p1, "call1"    # Lcom/android/services/telephony/common/Call;
    .param p2, "call2"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v3, -0x1

    .line 1051
    const/4 v2, 0x0

    .line 1053
    .local v2, "result":Z
    const/4 v0, -0x1

    .line 1054
    .local v0, "phoneId1":I
    const/4 v1, -0x1

    .line 1055
    .local v1, "phoneId2":I
    if-eqz p1, :cond_0

    .line 1056
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPhoneId()I

    move-result v0

    .line 1058
    :cond_0
    if-eqz p2, :cond_1

    .line 1059
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getPhoneId()I

    move-result v1

    .line 1062
    :cond_1
    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_3

    .line 1063
    :cond_2
    const/4 v2, 0x0

    .line 1068
    :goto_0
    return v2

    .line 1065
    :cond_3
    if-ne v0, v1, :cond_4

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "type"    # I

    .prologue
    .line 794
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeStartSearch, call =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V

    .line 799
    :cond_0
    return-void

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V
    .locals 3
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "type"    # I
    .param p3, "isIncoming"    # Z

    .prologue
    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startContactInfoSearch number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 419
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;ILcom/android/services/telephony/common/CallIdentification;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 455
    return-void
.end method

.method public static startVTCallTimer()V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method

.method private updateCallForDualtalk()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 865
    const/4 v5, 0x0

    .line 866
    .local v5, "phoneType":I
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 867
    .local v4, "fgCall":Lcom/android/services/telephony/common/Call;
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 868
    .local v0, "bgCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 869
    .local v1, "bgSecondCall":Lcom/android/services/telephony/common/Call;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updateCallForDualtalk], fgCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bgCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bgSecondCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 872
    const/4 v1, 0x0

    .line 874
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    iget-object v3, v8, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 875
    .local v3, "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    if-nez v3, :cond_2

    .line 876
    const-string v8, "[updateCallForDualtalk], dualtalkCallInfo is null"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    :cond_1
    :goto_0
    return-void

    .line 879
    :cond_2
    if-eqz v4, :cond_3

    .line 880
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v5

    .line 881
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updateCallForDualtalk], phoneType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsCdmaAndGsmActive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 884
    if-eq v5, v10, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 886
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 887
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getCdmaActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    .line 888
    .local v2, "cdmaCall":Lcom/android/services/telephony/common/Call;
    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 890
    .end local v2    # "cdmaCall":Lcom/android/services/telephony/common/Call;
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 891
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 893
    :cond_5
    if-ne v5, v10, :cond_7

    .line 894
    invoke-virtual {v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getCdmaPhoneCallState()I

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsThreeWayCallOrigStateDialing()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 896
    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 902
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 900
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_1

    .line 903
    :cond_7
    const/4 v8, 0x1

    if-eq v5, v8, :cond_8

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    .line 904
    :cond_8
    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;

    move-result-object v6

    .line 905
    .local v6, "secondaryCall":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v4, v0, v1}, Lcom/android/incallui/CallCardPresenter;->getSecondaryHoldCallToShow(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;

    move-result-object v7

    .line 906
    .local v7, "secondaryHoldCall":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v6}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V

    .line 907
    invoke-virtual {p0, v7}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method

.method private updateCallerInfoPresentation()V
    .locals 3

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1, v2}, Lcom/android/incallui/ContactInfoCache;->updateCallerInformation(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 1079
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 1080
    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 1081
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 1084
    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return-void
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZLcom/android/services/telephony/common/CallIdentification;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "type"    # I
    .param p3, "isConference"    # Z
    .param p4, "identification"    # Lcom/android/services/telephony/common/CallIdentification;

    .prologue
    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContactEntry, type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; entry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "isEmergencyCall":Z
    if-eqz p1, :cond_0

    .line 773
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a036a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, p4}, Lcom/android/incallui/CallerInfoUtils;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 779
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_2

    .line 780
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 781
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 790
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 783
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 784
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    goto :goto_0

    .line 785
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 786
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    goto :goto_0

    .line 787
    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 788
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryIncomingCallDisplayInfo(Z)V

    goto :goto_0
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isPrimary"    # Z
    .param p3, "isConference"    # Z

    .prologue
    .line 467
    if-eqz p2, :cond_0

    .line 468
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 469
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 472
    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    goto :goto_0
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 20
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 536
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update primary display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 538
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 541
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v6, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_0
    return-void

    .line 545
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 546
    .local v8, "isGenericConf":Z
    if-eqz p1, :cond_2

    .line 547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "number":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 550
    .local v4, "nameIsNumber":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    move/from16 v7, p2

    invoke-interface/range {v1 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V

    .line 557
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameIsNumber":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v5, :cond_3

    .line 558
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v19

    .line 559
    .local v19, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Lcom/mediatek/incallui/ext/CallCardExtension;->updatePrimaryDisplayInfo(Lcom/android/services/telephony/common/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_0

    .line 549
    .end local v19    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 553
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v1

    move/from16 v15, p2

    move/from16 v16, v8

    invoke-interface/range {v9 .. v18}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V

    goto :goto_2

    .line 562
    :cond_3
    const-string v5, "[updatePrimaryDisplayInfo]mPrimary is null, abort calling Plugin"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSecondRingCallForDualTalk()V
    .locals 2

    .prologue
    .line 915
    const-string v1, "updateSecondRingCallForDualTalk: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v0, v1, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 919
    .local v0, "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getHasMultipleRingingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondaryIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryIncomingCall(Lcom/android/services/telephony/common/Call;)V

    .line 925
    .end local v0    # "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->disableSecondHoldCallView()V

    .line 926
    return-void

    .line 922
    .restart local v0    # "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->disableSecondIncomingCallView()V

    goto :goto_0
.end method

.method private updateSecondaryCall(Lcom/android/services/telephony/common/Call;)V
    .locals 7
    .param p1, "secondary"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 802
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 803
    .local v0, "secondaryChanged":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSecondaryCall, secondary =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; secondaryChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 807
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-nez v3, :cond_1

    .line 809
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 810
    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    .line 819
    :goto_1
    return-void

    .end local v0    # "secondaryChanged":Z
    :cond_0
    move v0, v1

    .line 802
    goto :goto_0

    .line 813
    .restart local v0    # "secondaryChanged":Z
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 815
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    .line 816
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSecondaryCallBannerBackground(II)V

    .line 817
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    goto :goto_1
.end method

.method private updateSecondaryDisplayInfo(Z)V
    .locals 20
    .param p1, "isConference"    # Z

    .prologue
    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 570
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 574
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v9

    .line 575
    .local v9, "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    .line 576
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSecondaryDisplayInfo() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "nameForCall":Ljava/lang/String;
    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    .line 580
    .local v5, "nameIsNumber":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "number":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v10, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    move/from16 v8, p1

    invoke-interface/range {v1 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLjava/lang/String;)V

    goto :goto_0

    .line 578
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "nameIsNumber":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 585
    .end local v4    # "nameForCall":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v10, v1

    move/from16 v17, p1

    move/from16 v18, v9

    invoke-interface/range {v10 .. v19}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private updateSecondaryHoldCallDisplayInfo(Z)V
    .locals 17
    .param p1, "isConference"    # Z

    .prologue
    .line 844
    const-string v2, "Update SecondaryHoldCall display "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 846
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 862
    :goto_0
    return-void

    .line 850
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 851
    .local v8, "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    .line 852
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSecondaryHoldCallDisplayInfo() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 854
    .local v3, "nameForCall":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 856
    .local v4, "nameIsNumber":Z
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move/from16 v7, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryHold(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0

    .line 854
    .end local v4    # "nameIsNumber":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 860
    .end local v3    # "nameForCall":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    move/from16 v15, p1

    move/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryHold(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0
.end method

.method private updateSecondaryIncomingCallDisplayInfo(Z)V
    .locals 17
    .param p1, "isConference"    # Z

    .prologue
    .line 950
    const-string v2, "Update SecondaryIncomingCall display "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 952
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 969
    :goto_0
    return-void

    .line 956
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 957
    .local v8, "isGenericConf":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    .line 958
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSecondaryHoldCallDisplayInfo() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, "nameForCall":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 963
    .local v4, "nameIsNumber":Z
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move/from16 v7, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryIncoming(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0

    .line 961
    .end local v4    # "nameIsNumber":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 967
    .end local v3    # "nameForCall":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    move/from16 v15, p1

    move/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryIncoming(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0
.end method

.method private updateVoiceCallRecordState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceCallRecordState... state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "ringCall":Lcom/android/services/telephony/common/Call;
    const/4 v1, -0x1

    .line 731
    .local v1, "ringCallState":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    .line 735
    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_2

    .line 743
    :cond_1
    :goto_0
    return-void

    .line 738
    :cond_2
    if-eqz p1, :cond_1

    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public hasSecondaryCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1192
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_1

    .line 1193
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1195
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1193
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1195
    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 108
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 111
    if-eqz p2, :cond_0

    .line 112
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 114
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v0

    .line 117
    .local v0, "identification":Lcom/android/services/telephony/common/CallIdentification;
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v4, v2}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V

    .line 139
    .end local v0    # "identification":Lcom/android/services/telephony/common/CallIdentification;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 140
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 141
    const-string v2, "Starting the calltime timer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 149
    :goto_2
    return-void

    .end local v1    # "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .restart local v0    # "identification":Lcom/android/services/telephony/common/CallIdentification;
    :cond_1
    move v2, v4

    .line 124
    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0, v6, v4, v3, v6}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZLcom/android/services/telephony/common/CallIdentification;)V

    goto :goto_1

    .line 144
    .end local v0    # "identification":Lcom/android/services/telephony/common/CallIdentification;
    .restart local v1    # "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    :cond_3
    const-string v2, "Canceling the calltime timer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v2}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 146
    invoke-interface {v1, v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_2
.end method

.method public isInComingCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1185
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_1

    .line 1186
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1188
    :cond_1
    return v0
.end method

.method public isVTCall()Z
    .locals 5

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "isVT":Z
    const/4 v1, 0x0

    .line 748
    .local v1, "ringCall":Lcom/android/services/telephony/common/Call;
    const/4 v2, -0x1

    .line 749
    .local v2, "ringCallState":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    .line 753
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVTCall()... mCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    return v0
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 351
    return-void
.end method

.method public onDualtalkSecondaryPhotoClicked()V
    .locals 1

    .prologue
    .line 1005
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->secondaryHoldPhotoClicked()V

    .line 1006
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 199
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 200
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 359
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 13
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 206
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/InCallUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallInfoLayout(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 216
    :cond_1
    const/4 v10, 0x0

    .line 217
    .local v10, "primary":Lcom/android/services/telephony/common/Call;
    const/4 v12, 0x0

    .line 219
    .local v12, "secondary":Lcom/android/services/telephony/common/Call;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_4

    .line 220
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v10

    .line 222
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallState(Z)V

    .line 251
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->checkDisplayFloatCall(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrimary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secondary call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1, v10}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v11, 0x1

    .line 257
    .local v11, "primaryChanged":Z
    :goto_2
    iput-object v12, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 258
    iput-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 263
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallerInfoPresentation()V

    .line 266
    if-eqz v11, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_3

    .line 268
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-static {v2, v4, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 270
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 276
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    .line 297
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 303
    const-string v1, "Starting the calltime timer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    sget-object v1, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 316
    :goto_4
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_b

    .line 317
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, v2, :cond_a

    const/4 v3, 0x1

    .line 319
    .local v3, "bluetoothOn":Z
    :goto_5
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSimIndicator(II)V

    .line 325
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v2}, Lcom/mediatek/incallui/ext/CallCardExtension;->onStateChange(Lcom/android/services/telephony/common/Call;)V

    .line 332
    .end local v3    # "bluetoothOn":Z
    :goto_6
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateVoiceCallRecordState(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallDisplayForMTK()V

    goto/16 :goto_0

    .line 226
    .end local v11    # "primaryChanged":Z
    :cond_4
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_6

    .line 227
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v10

    .line 231
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v12

    .line 233
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 234
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v12

    .line 238
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallState(Z)V

    goto/16 :goto_1

    .line 242
    :cond_6
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_2

    .line 243
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v10

    .line 244
    const/4 v1, 0x1

    invoke-static {p2, v10, v1}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v12

    .line 246
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallState(Z)V

    goto/16 :goto_1

    .line 255
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 268
    .restart local v11    # "primaryChanged":Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 310
    :cond_9
    const-string v1, "Canceling the calltime timer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    sget-object v1, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v1}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 312
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto/16 :goto_4

    .line 317
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 327
    :cond_b
    const/4 v5, 0x1

    sget-object v6, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-interface/range {v4 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 355
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 155
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 168
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 169
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 171
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addPhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V

    .line 173
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 77
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 180
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 181
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 183
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removePhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V

    .line 186
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 188
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 189
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 190
    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 192
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 194
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 77
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 722
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPhoneVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->updateVoiceCallRecordState(I)V

    .line 725
    :cond_0
    return-void
.end method

.method public rejectCallWithReminder(J)V
    .locals 22
    .param p1, "inTime"    # J

    .prologue
    .line 1202
    const-string v3, "rejectCallWithReminder()..."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/incallui/CallCommandClient;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 1205
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getReminderNotificationId()I

    move-result v9

    .line 1206
    .local v9, "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1207
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v3}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v15

    .line 1209
    .local v15, "number":Ljava/lang/String;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1210
    move-object v6, v15

    .line 1214
    .local v6, "phoneNumber":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1216
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1217
    .local v17, "phoneName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    move-object/from16 v5, v17

    .line 1221
    :cond_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1222
    .local v12, "it":Landroid/content/Intent;
    const-string v3, "com.android.incallui.reminder"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    const-string v3, "name"

    invoke-virtual {v12, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const-string v3, "number"

    invoke-virtual {v12, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    const-string v3, "reminderTime"

    move-wide/from16 v0, p1

    invoke-virtual {v12, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1226
    const-string v3, "notificationId"

    invoke-virtual {v12, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v9, v12, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 1228
    .local v18, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 1229
    .local v10, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1231
    .local v11, "cal":Ljava/util/Calendar;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/InCallPresenter;->reminderContainsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1232
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/InCallPresenter;->getReminderIntentFromMap(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 1233
    .local v19, "temp":Landroid/content/Intent;
    const-string v3, "notificationId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1234
    .local v13, "lastId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 1235
    .local v14, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v14, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v3, v13, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 1237
    .local v16, "p":Landroid/app/PendingIntent;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1239
    .end local v13    # "lastId":I
    .end local v14    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v16    # "p":Landroid/app/PendingIntent;
    .end local v19    # "temp":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v6, v12}, Lcom/android/incallui/InCallPresenter;->putReminderMap(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1240
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 1241
    .local v20, "timeMillis":J
    add-long v20, v20, p1

    .line 1242
    const/4 v3, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    invoke-virtual {v10, v3, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1244
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-wide/from16 v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/incallui/InCallPresenter;->notifyReminderCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1246
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "phoneNumber":Ljava/lang/String;
    .end local v9    # "id":I
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v11    # "cal":Ljava/util/Calendar;
    .end local v12    # "it":Landroid/content/Intent;
    .end local v15    # "number":Ljava/lang/String;
    .end local v17    # "phoneName":Ljava/lang/String;
    .end local v18    # "pi":Landroid/app/PendingIntent;
    .end local v20    # "timeMillis":J
    :cond_2
    return-void

    .line 1212
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v9    # "id":I
    .restart local v15    # "number":Ljava/lang/String;
    :cond_3
    move-object v6, v5

    .restart local v6    # "phoneNumber":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public secondaryPhotoClicked()V
    .locals 1

    .prologue
    .line 666
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->secondaryPhotoClicked()V

    .line 668
    return-void
.end method

.method public swapClicked()V
    .locals 1

    .prologue
    .line 1199
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    .line 1200
    return-void
.end method

.method public switchCalls()V
    .locals 1

    .prologue
    .line 1013
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->switchCalls()V

    .line 1014
    return-void
.end method

.method public switchRingtoneForDualTalk()V
    .locals 1

    .prologue
    .line 1009
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->switchRingtoneForDualTalk()V

    .line 1010
    return-void
.end method

.method public updateCallDisplayForMTK()V
    .locals 6

    .prologue
    .line 974
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    .line 975
    .local v2, "fgCall":Lcom/android/services/telephony/common/Call;
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    .line 977
    .local v0, "bgCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    .line 980
    .local v3, "ringingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v1, v4, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 981
    .local v1, "dualtalkCallInfo":Lcom/android/services/telephony/common/DualtalkCallInfo;
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getHasMultipleRingingCall()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getIsRingingWhenOutgoing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 990
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondRingCallForDualTalk()V

    .line 1002
    :cond_2
    :goto_0
    return-void

    .line 991
    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    .line 1000
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateCallForDualtalk()V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 8

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 364
    .local v4, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 365
    :cond_0
    if-eqz v4, :cond_1

    .line 366
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 368
    :cond_1
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v0

    .line 371
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v0

    .line 372
    .local v2, "duration":J
    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/CallCardPresenter;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public updateSecondaryHoldCall(Lcom/android/services/telephony/common/Call;)V
    .locals 7
    .param p1, "secondaryHoldCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 822
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 823
    .local v0, "secondaryHoldChanged":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSecondaryHoldCall, secondaryHoldCall =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; secondaryHoldChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    .line 826
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    if-nez v3, :cond_1

    .line 827
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 828
    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    .line 841
    :goto_1
    return-void

    .end local v0    # "secondaryHoldChanged":Z
    :cond_0
    move v0, v2

    .line 822
    goto :goto_0

    .line 831
    .restart local v0    # "secondaryHoldChanged":Z
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    :goto_2
    invoke-static {v3, v4, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 834
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    .line 836
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSecondaryHoldCallBannerBackground(II)V

    .line 839
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryHoldCall:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 831
    goto :goto_2
.end method

.method public updateSecondaryIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "secondaryIncomingCall"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSecondaryIncomingCall],  secondaryIncomingCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    .line 932
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_0

    .line 933
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 934
    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryHoldCallDisplayInfo(Z)V

    .line 947
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v2, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCallInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 940
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryIncomingCallDisplayInfo(Z)V

    .line 942
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateSecondaryIncomingCallBannerBackground(II)V

    .line 945
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryIncomingCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    goto :goto_0
.end method
