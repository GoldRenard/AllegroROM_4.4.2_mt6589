.class public Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothSecurityConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final START_TYPE_CONFIRM_ENABLE:I = 0x1

.field private static final START_TYPE_CONFIRM_ESTABLIH_CONNECTION:I = 0x2

.field private static final START_TYPE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSecurityConfirmActivity"


# instance fields
.field private mApplicationLabel:Ljava/lang/String;

.field private mDestinationAddr:Ljava/lang/String;

.field private mSendConfirmIntent:Z

.field private mStartType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    .line 26
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mDestinationAddr:Ljava/lang/String;

    .line 29
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mSendConfirmIntent:Z

    return-void
.end method

.method private createDialog()V
    .locals 10

    .prologue
    const v9, 0x7f090c00

    const v8, 0x7f090bff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    const-string v2, "BluetoothSecurityConfirmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDialog, StartType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 145
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    if-ne v2, v6, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 149
    const v2, 0x7f090bfe

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 200
    :cond_0
    :goto_0
    const v2, 0x7f090417

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 201
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 202
    const v2, 0x7f090418

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 203
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 210
    return-void

    .line 153
    :cond_1
    const v2, 0x7f090492

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 156
    :cond_2
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    if-ne v2, v7, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 160
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mDestinationAddr:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mDestinationAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 164
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_3

    .line 166
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 170
    :cond_3
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Unknown Device"

    aput-object v3, v2, v6

    invoke-virtual {p0, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 175
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Unknown Device"

    aput-object v3, v2, v6

    invoke-virtual {p0, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 180
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mDestinationAddr:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 182
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mDestinationAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 184
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_6

    .line 186
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 190
    :cond_6
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Unknown Device"

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 195
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Unknown Device"

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "BluetoothSecurityConfirmActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 247
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    const-string v2, "BluetoothSecurityConfirmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, which: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, "result":I
    packed-switch p2, :pswitch_data_0

    .line 230
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.BLUETOOTH_SECURITY_CONFIRM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.adapter.extra.SECURITY_CONFIRM_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mSendConfirmIntent:Z

    .line 237
    return-void

    .line 222
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    const/4 v1, 0x1

    .line 223
    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 34
    const-string v1, "BluetoothSecurityConfirmActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mSendConfirmIntent:Z

    .line 40
    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.CONFIRM_ENABLE_BLUETOOTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    .line 58
    const-string v1, "android.bluetooth.adapter.extra.APPLICATION_LABEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    .line 69
    :cond_0
    :goto_0
    const-string v1, "BluetoothSecurityConfirmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, StartType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    if-nez v1, :cond_2

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 79
    :goto_1
    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.CONFIRM_ESTABLISH_BLUETOOTH_CONNECTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mStartType:I

    .line 64
    const-string v1, "android.bluetooth.adapter.extra.APPLICATION_LABEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mApplicationLabel:Ljava/lang/String;

    .line 65
    const-string v1, "android.bluetooth.adapter.extra.SOCKET_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mDestinationAddr:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->createDialog()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 124
    const-string v1, "BluetoothSecurityConfirmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, SendConfirmIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mSendConfirmIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mSendConfirmIntent:Z

    if-nez v1, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLUETOOTH_SECURITY_CONFIRM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.SECURITY_CONFIRM_RESULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 95
    const-string v1, "BluetoothSecurityConfirmActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLUETOOTH_SECURITY_CONFIRM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.SECURITY_CONFIRM_RESULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSecurityConfirmActivity;->mSendConfirmIntent:Z

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "BluetoothSecurityConfirmActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "BluetoothSecurityConfirmActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 118
    return-void
.end method
