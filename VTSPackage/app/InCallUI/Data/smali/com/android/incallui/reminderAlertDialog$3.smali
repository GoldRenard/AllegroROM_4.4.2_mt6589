.class Lcom/android/incallui/reminderAlertDialog$3;
.super Ljava/lang/Object;
.source "reminderAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/reminderAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/reminderAlertDialog;

.field final synthetic val$id:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$reminderTime:J


# direct methods
.method constructor <init>(Lcom/android/incallui/reminderAlertDialog;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/incallui/reminderAlertDialog$3;->this$0:Lcom/android/incallui/reminderAlertDialog;

    iput-object p2, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$number:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$reminderTime:J

    iput p6, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 13
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v9, "it":Landroid/content/Intent;
    const-string v0, "com.android.incallui.reminder"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$name:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v0, "number"

    iget-object v1, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$number:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v0, "reminderTime"

    iget-wide v1, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$reminderTime:J

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/android/incallui/reminderAlertDialog$3;->this$0:Lcom/android/incallui/reminderAlertDialog;

    iget v1, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$id:I

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 77
    .local v10, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/incallui/reminderAlertDialog$3;->this$0:Lcom/android/incallui/reminderAlertDialog;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 78
    .local v7, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 79
    .local v8, "cal":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 80
    .local v11, "timeMillis":J
    iget-wide v0, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$reminderTime:J

    add-long/2addr v11, v0

    .line 81
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v11, v12, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 83
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/reminderAlertDialog$3;->this$0:Lcom/android/incallui/reminderAlertDialog;

    iget-object v2, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$number:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$reminderTime:J

    iget v6, p0, Lcom/android/incallui/reminderAlertDialog$3;->val$id:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/InCallPresenter;->notifyReminderCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 84
    iget-object v0, p0, Lcom/android/incallui/reminderAlertDialog$3;->this$0:Lcom/android/incallui/reminderAlertDialog;

    # getter for: Lcom/android/incallui/reminderAlertDialog;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/incallui/reminderAlertDialog;->access$000(Lcom/android/incallui/reminderAlertDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 85
    iget-object v0, p0, Lcom/android/incallui/reminderAlertDialog$3;->this$0:Lcom/android/incallui/reminderAlertDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 86
    return-void
.end method
