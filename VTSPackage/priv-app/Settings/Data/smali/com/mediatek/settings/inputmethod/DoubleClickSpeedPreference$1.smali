.class Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "DoubleClickSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference$1;->this$0:Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference$1;->this$0:Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;

    # invokes: Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->access$000(Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;)V

    .line 58
    return-void
.end method
