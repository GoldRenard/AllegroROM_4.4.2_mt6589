.class Lcom/mediatek/gemini/SimManagement$3;
.super Landroid/telephony/PhoneStateListener;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 192
    .local v0, "state":I
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$3;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->handleRadioStatus(I)V
    invoke-static {v1, v0}, Lcom/mediatek/gemini/SimManagement;->access$200(Lcom/mediatek/gemini/SimManagement;I)V

    .line 193
    return-void
.end method
