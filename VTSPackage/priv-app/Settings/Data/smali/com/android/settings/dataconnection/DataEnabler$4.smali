.class Lcom/android/settings/dataconnection/DataEnabler$4;
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
    .line 259
    iput-object p1, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$900(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 263
    .local v0, "isDataOn":Z
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    const-string v1, "DataEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lenovo debug mMobileDataObserver,  selfchange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isDataOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 271
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$4;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
