.class public Lcom/android/phone/common/HapticFeedback;
.super Ljava/lang/Object;
.source "HapticFeedback.java"


# static fields
.field private static final DURATION:J = 0xaL

.field private static final NO_REPEAT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HapticFeedback"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHapticPattern:[J

.field private mSettingEnabled:Z

.field private mSystemSettings:Landroid/provider/Settings$System;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSystemSetting()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-boolean v2, p0, Lcom/android/phone/common/HapticFeedback;->mEnabled:Z

    if-nez v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/common/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    iget-object v2, p0, Lcom/android/phone/common/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, "val":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/HapticFeedback;->mSettingEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1    # "val":I
    :catch_0
    move-exception v0

    .line 113
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "HapticFeedback"

    const-string v4, "Could not retrieve system setting."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iput-boolean v3, p0, Lcom/android/phone/common/HapticFeedback;->mSettingEnabled:Z

    goto :goto_0

    .end local v0    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "val":I
    :cond_1
    move v2, v3

    .line 111
    goto :goto_1
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 89
    iput-boolean p2, p0, Lcom/android/phone/common/HapticFeedback;->mEnabled:Z

    .line 90
    if-eqz p2, :cond_0

    .line 93
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    .line 95
    new-instance v0, Landroid/provider/Settings$System;

    invoke-direct {v0}, Landroid/provider/Settings$System;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mSystemSettings:Landroid/provider/Settings$System;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mContentResolver:Landroid/content/ContentResolver;

    .line 98
    :cond_0
    return-void

    .line 94
    nop

    :array_0
    .array-data 8
        0x0
        0xa
        0x14
        0x1e
    .end array-data
.end method

.method public vibrate()V
    .locals 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/phone/common/HapticFeedback;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/common/HapticFeedback;->mSettingEnabled:Z

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/phone/common/HapticFeedback;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/common/HapticFeedback;->mHapticPattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method
