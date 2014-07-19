.class public Lcom/android/incallui/FloatService;
.super Landroid/app/Service;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FLOAT_SERVICE"


# instance fields
.field delaytime:I

.field mBackButton:Landroid/widget/ImageButton;

.field mCallTimeView:Landroid/widget/TextView;

.field mCallTimer:Lcom/android/incallui/CallTimer;

.field mEndButton:Landroid/widget/ImageButton;

.field mFloatView:Landroid/view/View;

.field mIntent:Landroid/content/Intent;

.field mName:Ljava/lang/String;

.field mNameTextView:Landroid/widget/TextView;

.field mPhotoPath:Ljava/lang/String;

.field mPhotoView:Landroid/widget/ImageView;

.field wm:Landroid/view/WindowManager;

.field wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/incallui/FloatService;->wm:Landroid/view/WindowManager;

    .line 35
    iput-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 49
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/incallui/FloatService;->delaytime:I

    return-void
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/FloatService;->wm:Landroid/view/WindowManager;

    .line 88
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 89
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 90
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 91
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 92
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 94
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8d

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 98
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/FloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method

.method private formatElapsedTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v11, 0xe10

    const-wide/16 v9, 0x3c

    .line 207
    const-string v4, "%1$02d:%2$02d:%3$02d"

    .line 208
    .local v4, "sElapsedFormatHMMSS":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 209
    .local v0, "hours":J
    const-wide/16 v2, 0x0

    .line 210
    .local v2, "minutes":J
    const-wide/16 v5, 0x0

    .line 212
    .local v5, "seconds":J
    cmp-long v7, p1, v11

    if-ltz v7, :cond_0

    .line 213
    div-long v0, p1, v11

    .line 214
    mul-long v7, v0, v11

    sub-long/2addr p1, v7

    .line 216
    :cond_0
    cmp-long v7, p1, v9

    if-ltz v7, :cond_1

    .line 217
    div-long v2, p1, v9

    .line 218
    mul-long v7, v2, v9

    sub-long/2addr p1, v7

    .line 220
    :cond_1
    move-wide v5, p1

    .line 221
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


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 162
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 163
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 164
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0

    .line 170
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v1    # "calls":Lcom/android/incallui/CallList;
    :sswitch_1
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 172
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 173
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FLOAT_SERVICE"

    const-string v5, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x7f06001a -> :sswitch_0
        0x7f060054 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "FloatService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mPhotoView:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mNameTextView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mCallTimeView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mEndButton:Landroid/widget/ImageButton;

    .line 60
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mBackButton:Landroid/widget/ImageButton;

    .line 62
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/FloatService;->mIntent:Landroid/content/Intent;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/FloatService$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/FloatService$1;-><init>(Lcom/android/incallui/FloatService;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 80
    invoke-direct {p0}, Lcom/android/incallui/FloatService;->createView()V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "FloatService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/incallui/FloatService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/FloatService;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 125
    const-string v0, "FloatService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->setForeground(Z)V

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iput-object p1, p0, Lcom/android/incallui/FloatService;->mIntent:Landroid/content/Intent;

    .line 129
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mPhotoPath:Ljava/lang/String;

    .line 130
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/FloatService;->mName:Ljava/lang/String;

    .line 131
    const-string v0, "FLOAT_SERVICE"

    const-string v1, "photo=mPhotoPath,mName=mName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/FloatService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 104
    const-string v2, "FLOAT_SERVICE"

    const-string v3, "onStartCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/android/incallui/FloatService;->mIntent:Landroid/content/Intent;

    .line 107
    const-string v2, "photo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/FloatService;->mPhotoPath:Ljava/lang/String;

    .line 108
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/FloatService;->mName:Ljava/lang/String;

    .line 109
    const-string v2, "FLOAT_SERVICE"

    const-string v3, "photo=mPhotoPath,mName=mName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/android/incallui/FloatService;->mNameTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/incallui/FloatService;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/FloatService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 115
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 117
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/incallui/FloatService;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 120
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .param p1, "timeElapsed"    # J

    .prologue
    .line 190
    return-void
.end method

.method setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "duration"    # Ljava/lang/String;

    .prologue
    .line 225
    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mCallTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mCallTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mCallTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mCallTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/incallui/FloatService;->mCallTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 9

    .prologue
    .line 193
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 194
    .local v3, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 196
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 197
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/FloatService;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/android/incallui/FloatService;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 204
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v1

    .line 201
    .local v1, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v1

    .line 202
    .local v4, "duration":J
    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    div-long v7, v4, v7

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/FloatService;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/FloatService;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method
