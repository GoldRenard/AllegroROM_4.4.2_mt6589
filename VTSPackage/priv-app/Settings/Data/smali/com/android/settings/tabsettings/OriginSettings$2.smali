.class Lcom/android/settings/tabsettings/OriginSettings$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 224
    iput-object p1, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "action":Ljava/lang/String;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive called, action is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 231
    .local v1, "enabled":Z
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "airline mode changed: state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 233
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v3, v2, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;

    if-eqz v3, :cond_0

    .line 234
    check-cast v2, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;

    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v2, v1}, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;->updateAirPlaneMode(Z)V

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 284
    .end local v1    # "enabled":Z
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    const-string v3, "com.android.mms.transaction.START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    const-string v3, "Settings"

    const-string v4, "isMmsOngoing = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 268
    .restart local v2    # "listAdapter":Landroid/widget/ListAdapter;
    instance-of v3, v2, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;

    if-eqz v3, :cond_3

    .line 269
    check-cast v2, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;

    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;->updateAirPlaneMode(Z)V

    .line 271
    :cond_3
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0

    .line 272
    :cond_4
    const-string v3, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 273
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 274
    .restart local v2    # "listAdapter":Landroid/widget/ListAdapter;
    const-string v3, "Settings"

    const-string v4, "isMmsOngoing = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    instance-of v3, v2, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;

    if-eqz v3, :cond_5

    .line 276
    check-cast v2, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;

    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v2, v6}, Lcom/android/settings/tabsettings/OriginSettings$HeaderAdapter;->updateAirPlaneMode(Z)V

    .line 278
    :cond_5
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0

    .line 279
    :cond_6
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings/tabsettings/OriginSettings;->access$100(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings/tabsettings/OriginSettings;->access$100(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/android/settings/tabsettings/OriginSettings$2;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings/tabsettings/OriginSettings;->access$100(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
