.class public Lcom/android/incallui/reminderAlertDialog;
.super Landroid/app/Activity;
.source "reminderAlertDialog.java"


# instance fields
.field private mRingtone:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/reminderAlertDialog;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/reminderAlertDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/incallui/reminderAlertDialog;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v12, 0x288000

    .line 30
    .local v12, "flags":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 31
    .local v14, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v12

    iput v1, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/reminderAlertDialog;->mRingtone:Landroid/media/Ringtone;

    .line 34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/reminderAlertDialog;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 35
    const v1, 0x7f03000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 37
    .local v13, "intent":Landroid/content/Intent;
    const-wide/32 v9, 0x927c0

    .line 38
    .local v9, "defaultTime":J
    const-string v1, "name"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "name":Ljava/lang/String;
    const-string v1, "number"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "number":Ljava/lang/String;
    const-string v1, "reminderTime"

    invoke-virtual {v13, v1, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 41
    .local v5, "reminderTime":J
    const-string v1, "notificationId"

    const/16 v2, 0x3e9

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 42
    .local v7, "id":I
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0381

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 44
    const v1, 0x7f0a0380

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 45
    .local v15, "msg":Ljava/lang/String;
    invoke-virtual {v8, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    const v1, 0x7f0a037d

    new-instance v2, Lcom/android/incallui/reminderAlertDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v3}, Lcom/android/incallui/reminderAlertDialog$1;-><init>(Lcom/android/incallui/reminderAlertDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f0a0382

    new-instance v2, Lcom/android/incallui/reminderAlertDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/incallui/reminderAlertDialog$2;-><init>(Lcom/android/incallui/reminderAlertDialog;)V

    invoke-virtual {v8, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    new-instance v1, Lcom/android/incallui/reminderAlertDialog$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/reminderAlertDialog$3;-><init>(Lcom/android/incallui/reminderAlertDialog;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 89
    .local v11, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 90
    return-void
.end method
