.class Lcom/android/settings/tabsettings/OriginSettings$1;
.super Landroid/os/Handler;
.source "OriginSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/OriginSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/OriginSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/OriginSettings;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/tabsettings/OriginSettings$1;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    const-string v0, "Settings"

    const-string v1, "detach time out......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/settings/tabsettings/OriginSettings$1;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/OriginSettings;->access$000(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/tabsettings/OriginSettings$1;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/OriginSettings;->access$000(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0

    .line 214
    :pswitch_1
    const-string v0, "Settings"

    const-string v1, "attach time out......simId is "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/settings/tabsettings/OriginSettings$1;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/OriginSettings;->access$000(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/tabsettings/OriginSettings$1;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/OriginSettings;->access$000(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
