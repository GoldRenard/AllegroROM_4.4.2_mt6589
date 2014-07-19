.class Lcom/android/settings/dataconnection/DataEnabler$3;
.super Landroid/database/ContentObserver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dataconnection/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dataconnection/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dataconnection/DataEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/dataconnection/DataEnabler$3;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 223
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$3;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 224
    .local v0, "dataconnectionID":J
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$3;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$3;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dataconnection/DataEnabler$3;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 255
    return-void
.end method
