.class public Lcom/lenovo/widetouch/WideTouchService;
.super Ljava/lang/Object;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;,
        Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;,
        Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;,
        Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field public static final PERSIST_INPUT_AREA_SETTING:Ljava/lang/String; = "persist.sys.input.area"

.field private static final TAG:Ljava/lang/String; = "WideTouchService"

.field public static final TOUCH_WINDOW_SERVICE:Ljava/lang/String; = "com.lenovo.widetouch.TOUCH_WINDOW_SERVICE"


# instance fields
.field mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private mIsEnabled:Z

.field public mMyConn:Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

.field mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

.field public mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

.field private mWindowHeight:I

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    .line 196
    iput-boolean v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsBound:Z

    .line 147
    const-string v1, "WideTouchService"

    const-string v2, "FloatWindowService onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    .line 151
    iput-object p3, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 153
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManager:Landroid/view/WindowManager;

    .line 155
    new-instance v1, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;-><init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V

    iput-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    .line 158
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 160
    .local v0, "outSize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 161
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowWidth:I

    .line 162
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowHeight:I

    .line 164
    const-string v1, "WideTouchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWindowWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWindowHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/widetouch/WideTouchService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/widetouch/WideTouchService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/widetouch/WideTouchService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->hideStatusBar()V

    return-void
.end method

.method static synthetic access$502(Lcom/lenovo/widetouch/WideTouchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/widetouch/WideTouchService;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsBound:Z

    return p1
.end method

.method private disablePointerLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    .line 286
    const-string v0, "WideTouchService"

    const-string v1, "disablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 291
    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 296
    iput-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 300
    :cond_2
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/widetouch/WideTouchService;->setInputArea(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 3

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    .line 240
    const-string v0, "WideTouchService"

    const-string v1, "enablePointerLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "PointerLocationView"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 245
    new-instance v0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;-><init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPointerLocationInputEventReceiver:Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;

    .line 250
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->setInputAreaToSetting()V

    goto :goto_0
.end method

.method private hideStatusBar()V
    .locals 6

    .prologue
    .line 324
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, "service":Ljava/lang/Object;
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 327
    .local v2, "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 328
    .local v3, "test":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "service":Ljava/lang/Object;
    .end local v2    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "test":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setInputArea(Ljava/lang/String;)V
    .locals 3
    .param p1, "areaSetting"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string v0, "WideTouchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputArea :areaSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v0, "persist.sys.input.area"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method private setInputAreaToSetting()V
    .locals 4

    .prologue
    .line 257
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 258
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "wide_touch_area_setting"

    const/16 v3, 0x46

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 262
    .local v0, "areaSetting":I
    iget-boolean v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsEnabled:Z

    if-eqz v2, :cond_0

    .end local v0    # "areaSetting":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/widetouch/WideTouchService;->setInputArea(Ljava/lang/String;)V

    .line 264
    return-void

    .line 262
    .restart local v0    # "areaSetting":I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method


# virtual methods
.method public bindTouchWindowService()V
    .locals 4

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    new-instance v1, Lcom/lenovo/widetouch/WideTouchService$1;

    invoke-direct {v1, p0}, Lcom/lenovo/widetouch/WideTouchService$1;-><init>(Lcom/lenovo/widetouch/WideTouchService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    .line 222
    const-string v1, "WideTouchService"

    const-string v2, "onSystemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mPolicyHandler:Lcom/lenovo/widetouch/WideTouchService$PolicyHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;-><init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/os/Handler;)V

    .line 227
    .local v0, "settingsObserver":Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;
    invoke-virtual {v0}, Lcom/lenovo/widetouch/WideTouchService$SettingsObserver;->observe()V

    .line 228
    return-void
.end method

.method public unBindWideTouchService()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mMyConn:Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/widetouch/WideTouchService;->mMyConn:Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mMyConn:Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/widetouch/WideTouchService;->mIsBound:Z

    .line 219
    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 305
    iget-object v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 307
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "wide_touch"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 312
    .local v0, "newSetting":Z
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowHeight:I

    iget v3, p0, Lcom/lenovo/widetouch/WideTouchService;->mWindowWidth:I

    if-le v2, v3, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchService;->enable()V

    .line 319
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/widetouch/WideTouchService;->setInputAreaToSetting()V

    .line 320
    return-void

    .end local v0    # "newSetting":Z
    :cond_0
    move v0, v2

    .line 307
    goto :goto_0

    .line 315
    .restart local v0    # "newSetting":Z
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/widetouch/WideTouchService;->disable()V

    goto :goto_1
.end method
