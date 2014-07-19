.class public Lcom/android/incallui/InCallApp$ReminderBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReminderBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "action":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Broadcast from Notification: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const-string v20, "com.android.incallui.reminder"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 103
    const-wide/32 v7, 0x927c0

    .line 104
    .local v7, "defaultTime":J
    const-string v20, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "name":Ljava/lang/String;
    const-string v20, "number"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 106
    .local v15, "number":Ljava/lang/String;
    const-string v20, "reminderTime"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 107
    .local v18, "reminderTime":J
    const-string v20, "notificationId"

    const/16 v21, 0x3e9

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 108
    .local v10, "id":I
    const-string v20, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 109
    .local v14, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v14, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 110
    new-instance v12, Landroid/content/Intent;

    const-class v20, Lcom/android/incallui/reminderAlertDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v12, "it":Landroid/content/Intent;
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v20, "number"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v20, "reminderTime"

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    const-string v20, "notificationId"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v7    # "defaultTime":J
    .end local v10    # "id":I
    .end local v12    # "it":Landroid/content/Intent;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "nm":Landroid/app/NotificationManager;
    .end local v15    # "number":Ljava/lang/String;
    .end local v18    # "reminderTime":J
    :cond_0
    const-string v20, "com.android.incallui.reminder.delete"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 119
    const-string v20, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 120
    .restart local v13    # "name":Ljava/lang/String;
    const-string v20, "number"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 121
    .restart local v15    # "number":Ljava/lang/String;
    const-string v20, "reminderTime"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 122
    .restart local v18    # "reminderTime":J
    const-string v20, "notificationId"

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 124
    .restart local v10    # "id":I
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_4

    .line 125
    move-object/from16 v17, v15

    .line 129
    .local v17, "phoneNumber":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->reminderContainsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 130
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->getReminderIntentFromMap(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 131
    .local v9, "i":Landroid/content/Intent;
    const-string v20, "notificationId"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 132
    .local v11, "id0":I
    const/high16 v20, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v11, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 133
    .local v16, "p":Landroid/app/PendingIntent;
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 134
    .local v5, "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 135
    const-string v20, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 136
    .restart local v14    # "nm":Landroid/app/NotificationManager;
    invoke-virtual {v14, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v9    # "i":Landroid/content/Intent;
    .end local v10    # "id":I
    .end local v11    # "id0":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "nm":Landroid/app/NotificationManager;
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "p":Landroid/app/PendingIntent;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "reminderTime":J
    :cond_1
    const-string v20, "com.android.incallui.dial"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 140
    const-string v20, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 141
    .restart local v13    # "name":Ljava/lang/String;
    const-string v20, "number"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 142
    .restart local v15    # "number":Ljava/lang/String;
    const-string v20, "reminderTime"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 144
    .restart local v18    # "reminderTime":J
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 145
    move-object/from16 v17, v15

    .line 149
    .restart local v17    # "phoneNumber":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->reminderContainsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 150
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->getReminderIntentFromMap(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 151
    .restart local v12    # "it":Landroid/content/Intent;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 152
    .restart local v16    # "p":Landroid/app/PendingIntent;
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 153
    .restart local v5    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 155
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v12    # "it":Landroid/content/Intent;
    .end local v16    # "p":Landroid/app/PendingIntent;
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v20, "android.intent.action.DIAL"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "tel:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    .local v6, "callIntent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v6    # "callIntent":Landroid/content/Intent;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "reminderTime":J
    :cond_3
    return-void

    .line 127
    .restart local v10    # "id":I
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v15    # "number":Ljava/lang/String;
    .restart local v18    # "reminderTime":J
    :cond_4
    move-object/from16 v17, v13

    .restart local v17    # "phoneNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 147
    .end local v10    # "id":I
    .end local v17    # "phoneNumber":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v13

    .restart local v17    # "phoneNumber":Ljava/lang/String;
    goto :goto_1
.end method
