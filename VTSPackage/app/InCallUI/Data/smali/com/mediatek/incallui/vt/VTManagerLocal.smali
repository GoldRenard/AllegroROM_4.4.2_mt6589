.class public Lcom/mediatek/incallui/vt/VTManagerLocal;
.super Ljava/lang/Object;
.source "VTManagerLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;,
        Lcom/mediatek/incallui/vt/VTManagerLocal$State;
    }
.end annotation


# static fields
.field public static final VT_ERROR_CALL_DISCONNECT:I = 0x8001

.field public static final VT_ERROR_CAMERA:I = 0x8003

.field public static final VT_ERROR_MEDIA_RECORDER_COMPLETE:I = 0x8007

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_ERROR:I = 0x8006

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_INFO:I = 0x8005

.field public static final VT_ERROR_MEDIA_SERVER_DIED:I = 0x8004

.field public static final VT_ERROR_START_VTS_FAIL:I = 0x8002

.field public static final VT_MSG_CAM_BEGIN:I = 0x1000

.field public static final VT_MSG_CLOSE:I = 0x1

.field public static final VT_MSG_CONNECTED:I = 0x4

.field public static final VT_MSG_DISCONNECTED:I = 0x5

.field public static final VT_MSG_EM_INDICATION:I = 0x6

.field public static final VT_MSG_OPEN:I = 0x2

.field public static final VT_MSG_PEER_CAMERA_CLOSE:I = 0x10

.field public static final VT_MSG_PEER_CAMERA_OPEN:I = 0x9

.field public static final VT_MSG_READY:I = 0x3

.field public static final VT_MSG_RECEIVE_FIRSTFRAME:I = 0x8

.field public static final VT_MSG_START_COUNTER:I = 0x7

.field public static final VT_NORMAL_END_SESSION_COMMAND:I = 0x8101

.field public static final VT_RESULT_PEER_SNAPSHOT_FAIL:I = 0x7f

.field public static final VT_RESULT_PEER_SNAPSHOT_OK:I = 0x7e

.field public static final VT_RESULT_SWITCHCAMERA_FAIL:I = 0x81

.field public static final VT_RESULT_SWITCHCAMERA_OK:I = 0x80

.field public static final VT_VQ_NORMAL:I = 0x1

.field public static final VT_VQ_SHARP:I

.field private static sVTManagerWrapper:Lcom/mediatek/incallui/vt/VTManagerLocal;


# instance fields
.field private mCameraSensorCount:I

.field private mCanDecBrightness:Z

.field private mCanDecContrast:Z

.field private mCanDecZoom:Z

.field private mCanIncBrightness:Z

.field private mCanIncContrast:Z

.field private mCanIncZoom:Z

.field private mColorEffect:Ljava/lang/String;

.field private mIsNightModeOn:Z

.field private mIsSupportNightMode:Z

.field private mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

.field private mSupportedColorEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVTListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/mediatek/incallui/vt/VTManagerLocal;

    invoke-direct {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal;->sVTManagerWrapper:Lcom/mediatek/incallui/vt/VTManagerLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CLOSE:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mSupportedColorEffects:Ljava/util/List;

    .line 249
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    .line 65
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CLOSE:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal;->sVTManagerWrapper:Lcom/mediatek/incallui/vt/VTManagerLocal;

    return-object v0
.end method


# virtual methods
.method public addVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;

    .prologue
    .line 260
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public answerVTCallPre()V
    .locals 3

    .prologue
    .line 278
    const-string v2, "answerVTCallPre()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;

    .line 280
    .local v1, "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    invoke-interface {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;->answerVTCallPre()V

    goto :goto_0

    .line 282
    .end local v1    # "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    :cond_0
    return-void
.end method

.method public canDecBrightness()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanDecBrightness:Z

    return v0
.end method

.method public canDecContrast()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanDecContrast:Z

    return v0
.end method

.method public canDecZoom()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanDecZoom:Z

    return v0
.end method

.method public canIncBrightness()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanIncBrightness:Z

    return v0
.end method

.method public canIncContrast()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanIncContrast:Z

    return v0
.end method

.method public canIncZoom()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanIncZoom:Z

    return v0
.end method

.method public dialVTCallSuccess()V
    .locals 3

    .prologue
    .line 285
    const-string v2, "dialVTCallSuccess()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;

    .line 287
    .local v1, "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    invoke-interface {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;->dialVTCallSuccess()V

    goto :goto_0

    .line 289
    .end local v1    # "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    :cond_0
    return-void
.end method

.method public getCameraSensorCount()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCameraSensorCount:I

    return v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mColorEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getNightMode()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mIsNightModeOn:Z

    return v0
.end method

.method public getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mSupportedColorEffects:Ljava/util/List;

    return-object v0
.end method

.method public getVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V
    .locals 2
    .param p1, "params"    # Lcom/android/services/telephony/common/VTManagerParams;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVTManagerParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/VTManagerParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mColorEffect:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mColorEffect:Ljava/lang/String;

    .line 187
    iget v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mCameraSensorCount:I

    iput v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCameraSensorCount:I

    .line 188
    iget v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mVideoQuality:I

    iput v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVideoQuality:I

    .line 189
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecBrightness:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanDecBrightness:Z

    .line 190
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncBrightness:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanIncBrightness:Z

    .line 191
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecZoom:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanDecZoom:Z

    .line 192
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncZoom:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanIncZoom:Z

    .line 193
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecContrast:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanDecContrast:Z

    .line 194
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncContrast:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mCanIncContrast:Z

    .line 195
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mIsSupportNightMode:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mIsSupportNightMode:Z

    .line 196
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mIsNightModeOn:Z

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mIsNightModeOn:Z

    .line 197
    iget-object v0, p1, Lcom/android/services/telephony/common/VTManagerParams;->mSupportedColorEffects:Ljava/util/List;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mSupportedColorEffects:Ljava/util/List;

    .line 198
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->updateVTCallFragment()V

    .line 199
    return-void
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVideoQuality:I

    return v0
.end method

.method public isSupportNightMode()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mIsSupportNightMode:Z

    return v0
.end method

.method public notifyVTStateChange(I)V
    .locals 4
    .param p1, "msgVT"    # I

    .prologue
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVTStateChange: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;

    .line 273
    .local v1, "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    invoke-interface {v1, p1}, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;->onVTStateChanged(I)V

    goto :goto_0

    .line 275
    .end local v1    # "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    :cond_0
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 3
    .param p1, "msgVT"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVTStateChanged()... msgVT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 154
    :goto_0
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->notifyVTStateChange(I)V

    .line 155
    return-void

    .line 77
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->setState(I)V

    .line 78
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->reset()V

    goto :goto_0

    .line 82
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->setState(I)V

    goto :goto_0

    .line 86
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->setState(I)V

    goto :goto_0

    .line 90
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->setState(I)V

    goto :goto_0

    .line 94
    :sswitch_5
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    goto :goto_0

    .line 104
    :sswitch_6
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->updateVTCallButton()V

    goto :goto_0

    .line 143
    :sswitch_7
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    goto :goto_0

    .line 148
    :sswitch_8
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_6
        0x9 -> :sswitch_0
        0x10 -> :sswitch_0
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
        0x80 -> :sswitch_7
        0x81 -> :sswitch_7
        0x1000 -> :sswitch_0
        0x8001 -> :sswitch_0
        0x8002 -> :sswitch_0
        0x8003 -> :sswitch_0
        0x8004 -> :sswitch_0
        0x8005 -> :sswitch_0
        0x8006 -> :sswitch_0
        0x8007 -> :sswitch_0
        0x8101 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;

    .prologue
    .line 265
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "msgVT"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msgVT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 173
    const-string v0, "msgVT is not a State related message."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState to be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    return-void

    .line 161
    :pswitch_0
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->OPEN:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CLOSE:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    goto :goto_0

    .line 167
    :pswitch_2
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    goto :goto_0

    .line 170
    :pswitch_3
    sget-object v0, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mState:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateVTCallButton()V
    .locals 3

    .prologue
    .line 299
    const-string v2, "updateVTCallButton()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;

    .line 301
    .local v1, "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    invoke-interface {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;->updateVTCallButton()V

    goto :goto_0

    .line 303
    .end local v1    # "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    :cond_0
    return-void
.end method

.method public updateVTCallFragment()V
    .locals 3

    .prologue
    .line 292
    const-string v2, "updateVTCallFragment()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTManagerLocal;->mVTListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;

    .line 294
    .local v1, "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    invoke-interface {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;->updateVTCallFragment()V

    goto :goto_0

    .line 296
    .end local v1    # "listener":Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;
    :cond_0
    return-void
.end method
