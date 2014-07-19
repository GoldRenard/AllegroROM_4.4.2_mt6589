.class public final Lcom/mediatek/settings/hotknot/HotKnotEnabler;
.super Ljava/lang/Object;
.source "HotKnotEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HotKnotEnabler"


# instance fields
.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 26
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;-><init>(Lcom/mediatek/settings/hotknot/HotKnotEnabler;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    .line 40
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    .line 41
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 45
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 46
    return-void
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 121
    iget-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 125
    iget-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    :cond_1
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 112
    invoke-direct {p0, v3}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iput-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 97
    const-string v0, "HotKnotEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, v2}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    iput-boolean v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 101
    const-string v0, "HotKnotEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :pswitch_1
    iput-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 105
    const-string v0, "HotKnotEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, v3}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 108
    iput-boolean v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 109
    const-string v0, "HotKnotEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 82
    const-string v0, "HotKnotEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUpdateStatusOnly is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    if-nez v0, :cond_0

    .line 84
    if-eqz p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->enable()Z

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->handleStateChanged(I)V

    .line 57
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 54
    goto :goto_1
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iput-object p1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    .line 76
    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setChecked(Z)V

    goto :goto_0
.end method
