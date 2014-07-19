.class Lcom/mediatek/settings/DisplaySettingsExt$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/DisplaySettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/DisplaySettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/DisplaySettingsExt;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt$1;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    const-string v0, "mediatek.DisplaySettings"

    const-string v1, "package changed, update list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt$1;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # invokes: Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyle()V
    invoke-static {v0}, Lcom/mediatek/settings/DisplaySettingsExt;->access$000(Lcom/mediatek/settings/DisplaySettingsExt;)V

    .line 149
    return-void
.end method
