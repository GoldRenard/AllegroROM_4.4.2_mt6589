.class Lcom/mediatek/hdmi/HDMISettings$1;
.super Landroid/database/ContentObserver;
.source "HDMISettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/HDMISettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/HDMISettings;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/HDMISettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/hdmi/HDMISettings$1;->this$0:Lcom/mediatek/hdmi/HDMISettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 47
    const-string v0, "HDMISettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHdmiSettingsObserver onChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/mediatek/hdmi/HDMISettings$1;->this$0:Lcom/mediatek/hdmi/HDMISettings;

    # invokes: Lcom/mediatek/hdmi/HDMISettings;->updatePref()V
    invoke-static {v0}, Lcom/mediatek/hdmi/HDMISettings;->access$000(Lcom/mediatek/hdmi/HDMISettings;)V

    .line 49
    return-void
.end method
