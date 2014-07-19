.class Lcom/android/incallui/reminderAlertDialog$1;
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

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/reminderAlertDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/incallui/reminderAlertDialog$1;->this$0:Lcom/android/incallui/reminderAlertDialog;

    iput-object p2, p0, Lcom/android/incallui/reminderAlertDialog$1;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/reminderAlertDialog$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 49
    iget-object v2, p0, Lcom/android/incallui/reminderAlertDialog$1;->this$0:Lcom/android/incallui/reminderAlertDialog;

    # getter for: Lcom/android/incallui/reminderAlertDialog;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/incallui/reminderAlertDialog;->access$000(Lcom/android/incallui/reminderAlertDialog;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 50
    iget-object v2, p0, Lcom/android/incallui/reminderAlertDialog$1;->val$number:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/reminderAlertDialog$1;->val$number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/incallui/reminderAlertDialog$1;->val$number:Ljava/lang/String;

    .line 56
    .local v1, "phoneNumber":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v2, p0, Lcom/android/incallui/reminderAlertDialog$1;->this$0:Lcom/android/incallui/reminderAlertDialog;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 60
    return-void

    .line 53
    .end local v0    # "callIntent":Landroid/content/Intent;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/reminderAlertDialog$1;->val$name:Ljava/lang/String;

    .restart local v1    # "phoneNumber":Ljava/lang/String;
    goto :goto_0
.end method
