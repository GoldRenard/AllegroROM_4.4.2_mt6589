.class public Lcom/android/server/lightadjust/AutoSetBrightnessTask;
.super Ljava/lang/Object;
.source "AutoSetBrightnessTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;
    }
.end annotation


# static fields
.field static final INVALID_LIST_DATA:I = -0x1


# instance fields
.field private isTimeTaskIsRunning:Z

.field private mAdjustList:Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

.field private mBRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

.field private final mContext:Landroid/content/Context;

.field private mIntervalTimeMS:I

.field private mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

.field private mStep:I

.field private mSupportLcdMaxContrast:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/lightadjust/ScreenBrightnessManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/server/lightadjust/ScreenBrightnessManager;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z

    .line 31
    iput-object p2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    .line 33
    iput-object p1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mContext:Landroid/content/Context;

    .line 34
    iput-boolean v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 35
    new-instance v0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;-><init>(Lcom/android/server/lightadjust/AutoSetBrightnessTask;Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

    .line 36
    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    iput v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mBRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mStep:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mStep:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mStep:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mBRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/lightadjust/AutoSetBrightnessTask;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->dynamicalAdjuest(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/lightadjust/AutoSetBrightnessTask;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->updateBrightness(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->setMaxContrast()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/lightadjust/AutoSetBrightnessTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/lightadjust/AutoSetBrightnessTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/AutoSetBrightnessTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->sendLogInfo(Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 153
    :cond_0
    return-void
.end method

.method private dynamicalAdjuest(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 128
    const/16 v0, 0x64

    .line 129
    .local v0, "interval":I
    const/16 v1, 0x1e

    if-ge p1, v1, :cond_1

    .line 130
    const/16 v0, 0xa

    .line 137
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->updateBrightness(I)V

    .line 138
    invoke-direct {p0, v0, v0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->scheduleTimerTask(II)V

    .line 139
    return-void

    .line 131
    :cond_1
    const/16 v1, 0x3c

    if-ge p1, v1, :cond_2

    .line 132
    const/16 v0, 0x14

    goto :goto_0

    .line 133
    :cond_2
    const/16 v1, 0x50

    if-ge p1, v1, :cond_0

    .line 134
    const/16 v0, 0x32

    goto :goto_0
.end method

.method private getTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$1;-><init>(Lcom/android/server/lightadjust/AutoSetBrightnessTask;)V

    return-object v0
.end method

.method private scheduleTimerTask(II)V
    .locals 7
    .param p1, "beginInterval"    # I
    .param p2, "aIntervalTime"    # I

    .prologue
    .line 105
    iput p2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mIntervalTimeMS:I

    .line 106
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ---> IntervalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mIntervalTimeMS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->getTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 113
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->getListSize()I

    move-result v6

    .line 114
    .local v6, "count":I
    iget-boolean v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z

    if-eqz v0, :cond_1

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->getCurrentBrightness()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->unlockMaxContrast()V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    iget v4, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mIntervalTimeMS:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 118
    return-void
.end method

.method private sendLogInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->sendLogInfo(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private setMaxContrast()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method private unlockMaxContrast()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method private updateBrightness(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-static {p1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->setBrightness(I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->updateCurrentBrightness(Ljava/lang/Integer;)V

    .line 123
    return-void
.end method


# virtual methods
.method public TerminateAll()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->cancelTimeTask()V

    .line 144
    invoke-direct {p0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->cancelTimer()V

    .line 145
    return-void
.end method

.method public cancelTimeTask()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "End--->Runing task force canceled!"

    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->sendLogInfo(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 162
    :cond_0
    return-void
.end method

.method public initValueList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mAdjustList:Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask$AdjustListData;->setListData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 167
    iget-boolean v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->isTimeTaskIsRunning:Z

    .line 169
    :cond_0
    return v0
.end method

.method public setBrightStateLcdBrightnessMinValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mBRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    .line 41
    return-void
.end method

.method public setSupportLcdMaxContrast(Z)V
    .locals 0
    .param p1, "supportLcdMaxContrast"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mSupportLcdMaxContrast:Z

    .line 174
    return-void
.end method

.method public start(I)V
    .locals 1
    .param p1, "aIntervalTime"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->mStep:I

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/android/server/lightadjust/AutoSetBrightnessTask;->scheduleTimerTask(II)V

    .line 56
    return-void
.end method
