.class Lcom/mediatek/settings/hotknot/HotKnotSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "HotKnotSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/hotknot/HotKnotSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/hotknot/HotKnotSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/hotknot/HotKnotSettings;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings$1;->this$0:Lcom/mediatek/settings/hotknot/HotKnotSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    return-void
.end method
