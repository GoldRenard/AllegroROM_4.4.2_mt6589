.class Lcom/mediatek/gemini/SelectSimCardActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectSimCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SelectSimCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SelectSimCardActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SelectSimCardActivity;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mediatek/gemini/SelectSimCardActivity$1;->this$0:Lcom/mediatek/gemini/SelectSimCardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v0, "SelectSimCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/mediatek/gemini/SelectSimCardActivity$1;->this$0:Lcom/mediatek/gemini/SelectSimCardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 23
    return-void
.end method
