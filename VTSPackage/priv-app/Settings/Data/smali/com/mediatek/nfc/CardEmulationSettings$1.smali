.class Lcom/mediatek/nfc/CardEmulationSettings$1;
.super Landroid/database/ContentObserver;
.source "CardEmulationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/CardEmulationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/CardEmulationSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 289
    const-string v0, "CardEmulationSettings"

    const-string v1, "mActiveCardModeObserver, onChange()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    # invokes: Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V
    invoke-static {v0}, Lcom/mediatek/nfc/CardEmulationSettings;->access$000(Lcom/mediatek/nfc/CardEmulationSettings;)V

    .line 291
    return-void
.end method
