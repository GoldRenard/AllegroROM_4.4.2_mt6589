.class Lcom/android/incallui/reminderAlertDialog$2;
.super Ljava/lang/Object;
.source "reminderAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/incallui/reminderAlertDialog;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/incallui/reminderAlertDialog$2;->this$0:Lcom/android/incallui/reminderAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/reminderAlertDialog$2;->this$0:Lcom/android/incallui/reminderAlertDialog;

    # getter for: Lcom/android/incallui/reminderAlertDialog;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/incallui/reminderAlertDialog;->access$000(Lcom/android/incallui/reminderAlertDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 65
    iget-object v0, p0, Lcom/android/incallui/reminderAlertDialog$2;->this$0:Lcom/android/incallui/reminderAlertDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 66
    return-void
.end method
