.class Lcom/android/settings/tabsettings/CommonSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "CommonSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/CommonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CommonSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CommonSettings;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/tabsettings/CommonSettings$2;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "action":Ljava/lang/String;
    const-string v1, "CommonSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive called, action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "CommonSettings"

    const-string v2, "isMmsOngoing = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_2
    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$2;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$2;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$2;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 191
    :cond_3
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$2;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$2;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$2;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
