.class public final Lcom/mediatek/incallui/vt/VTInCallScreenFlags;
.super Ljava/lang/Object;
.source "VTInCallScreenFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTInCallScreenFlags"

.field private static sVTInCallScreenFlags:Lcom/mediatek/incallui/vt/VTInCallScreenFlags;


# instance fields
.field public mVTAutoDropBack:Z

.field public mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

.field public mVTEnableBackCamera:Z

.field public mVTFrontCameraNow:Z

.field public mVTHasReceiveFirstFrame:Z

.field public mVTHideMeNow:Z

.field public mVTInControlRes:Z

.field public mVTInEndingCall:Z

.field public mVTInLocalBrightnessSetting:Z

.field public mVTInLocalContrastSetting:Z

.field public mVTInLocalZoomSetting:Z

.field public mVTInSnapshot:Z

.field public mVTInSwitchCamera:Z

.field public mVTIsInflate:Z

.field public mVTIsMT:Z

.field public mVTPeerBigger:Z

.field public mVTPicToReplaceLocal:Ljava/lang/String;

.field public mVTPicToReplacePeer:Ljava/lang/String;

.field public mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

.field public mVTSettingReady:Z

.field public mVTShouldCloseVTManager:Z

.field public mVTShowLocalMO:Z

.field public mVTShowLocalMT:Ljava/lang/String;

.field public mVTSlotId:I

.field public mVTStatusActive:Z

.field public mVTSurfaceChangedH:Z

.field public mVTSurfaceChangedL:Z

.field public mVTToReplacePeer:Z

.field public mVTVideoReady:Z

.field public mVTVoiceAnswer:Z

.field public mVTVoiceAnswerPhoneNumber:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-direct {v0, p0}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;-><init>(Lcom/mediatek/incallui/vt/VTInCallScreenFlags;)V

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    .line 127
    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->sVTInCallScreenFlags:Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    invoke-direct {v0}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->sVTInCallScreenFlags:Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    .line 122
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->sVTInCallScreenFlags:Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    return-object v0
.end method


# virtual methods
.method public getVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/services/telephony/common/VTSettingParams;

    .prologue
    .line 85
    const-string v0, "VTInCallScreenFlags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVTSettingParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/VTSettingParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplaceLocal:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPicToReplaceLocal:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMT:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMT:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplacePeer:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPicToReplacePeer:Ljava/lang/String;

    .line 89
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mEnableBackCamera:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTEnableBackCamera:Z

    .line 90
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mPeerBigger:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 91
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMO:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMO:Z

    .line 92
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mAutoDropBack:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTAutoDropBack:Z

    .line 93
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mToReplacePeer:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTToReplacePeer:Z

    .line 94
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 133
    const-string v0, "VTInCallScreenFlags"

    const-string v1, "reset()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 135
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 136
    iput-boolean v4, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 137
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 138
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 139
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 140
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 141
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 142
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 143
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 144
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 146
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 147
    iput-boolean v4, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 149
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 153
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 154
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 155
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTVoiceAnswer:Z

    .line 156
    iput-object v3, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTVoiceAnswerPhoneNumber:Ljava/lang/String;

    .line 157
    iput v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSlotId:I

    .line 159
    iput-object v3, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPicToReplaceLocal:Ljava/lang/String;

    .line 160
    iput-object v3, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMT:Ljava/lang/String;

    .line 161
    iput-object v3, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPicToReplacePeer:Ljava/lang/String;

    .line 162
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTEnableBackCamera:Z

    .line 163
    iput-boolean v4, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 164
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMO:Z

    .line 165
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTAutoDropBack:Z

    .line 166
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTToReplacePeer:Z

    .line 167
    iput-object v3, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

    .line 169
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/VTCallExtension;->resetFlags()V

    .line 170
    return-void
.end method

.method public resetPartial()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 177
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 178
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 179
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 180
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 181
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 182
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 183
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 184
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 185
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 186
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 187
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 188
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 190
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 194
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 195
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 196
    iput-boolean v2, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 197
    iput-boolean v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTVoiceAnswer:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTVoiceAnswerPhoneNumber:Ljava/lang/String;

    .line 199
    iput v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSlotId:I

    .line 200
    return-void
.end method

.method public resetTiming()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 209
    :cond_0
    return-void
.end method

.method public updateVTHideMeForMO()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "VTInCallScreenFlags"

    const-string v1, "updateVTHideMeForMO()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMO:Z

    if-nez v0, :cond_0

    .line 99
    const-string v0, "VTInCallScreenFlags"

    const-string v1, "updateVTHideMeForMO()...true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 102
    :cond_0
    return-void
.end method

.method public updateVTHideMeForMT()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "0"

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "VTInCallScreenFlags"

    const-string v1, "updateVTHideMeForMT()...true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 109
    :cond_0
    return-void
.end method
