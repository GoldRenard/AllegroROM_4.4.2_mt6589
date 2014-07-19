.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1080080

.field private static final WAKE_LOCK_TIMEOUT:I = 0x4e20

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static turnOnBacklight(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x1000000a

    const-string v2, "updateNewOPPRequestIndicator"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 60
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 61
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "action":Ljava/lang/String;
    const-string v14, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 69
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 71
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v14, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v15, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 73
    .local v13, "type":I
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v8, "pairingIntent":Landroid/content/Intent;
    const-class v14, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v8, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    const-string v14, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v8, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    const/4 v14, 0x4

    if-eq v13, v14, :cond_0

    const/4 v14, 0x5

    if-ne v13, v14, :cond_1

    .line 80
    :cond_0
    const-string v14, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v15, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 82
    .local v9, "pairingKey":I
    const-string v14, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    .end local v9    # "pairingKey":I
    :cond_1
    const-string v14, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/high16 v14, 0x10000000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    const-string v14, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 89
    .local v11, "powerManager":Landroid/os/PowerManager;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "deviceAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 94
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "deviceAddress":Ljava/lang/String;
    .end local v8    # "pairingIntent":Landroid/content/Intent;
    .end local v11    # "powerManager":Landroid/os/PowerManager;
    .end local v13    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 89
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v8    # "pairingIntent":Landroid/content/Intent;
    .restart local v11    # "powerManager":Landroid/os/PowerManager;
    .restart local v13    # "type":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 99
    .restart local v5    # "deviceAddress":Ljava/lang/String;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->turnOnBacklight(Landroid/content/Context;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 102
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v14, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x1080080

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f09048c

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 107
    .local v3, "builder":Landroid/app/Notification$Builder;
    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v14, v8, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 110
    .local v10, "pending":Landroid/app/PendingIntent;
    const-string v14, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 112
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    .line 116
    :cond_5
    :goto_2
    const v14, 0x7f09048d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f09048e

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 122
    const-string v14, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 124
    .local v6, "manager":Landroid/app/NotificationManager;
    const v14, 0x1080080

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 112
    .end local v6    # "manager":Landroid/app/NotificationManager;
    :cond_6
    const v14, 0x104000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 127
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "deviceAddress":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "pairingIntent":Landroid/content/Intent;
    .end local v10    # "pending":Landroid/app/PendingIntent;
    .end local v11    # "powerManager":Landroid/os/PowerManager;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "type":I
    :cond_7
    const-string v14, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 130
    const-string v14, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 132
    .restart local v6    # "manager":Landroid/app/NotificationManager;
    const v14, 0x1080080

    invoke-virtual {v6, v14}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 134
    .end local v6    # "manager":Landroid/app/NotificationManager;
    :cond_8
    const-string v14, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 135
    const-string v14, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v15, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 138
    .local v2, "bondState":I
    const/16 v14, 0xa

    if-ne v2, v14, :cond_2

    .line 139
    const-string v14, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 141
    .restart local v6    # "manager":Landroid/app/NotificationManager;
    const v14, 0x1080080

    invoke-virtual {v6, v14}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
