.class Lcom/mediatek/settings/SetupWizardForOobe$1;
.super Ljava/lang/Object;
.source "SetupWizardForOobe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/SetupWizardForOobe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/SetupWizardForOobe;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/SetupWizardForOobe;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/settings/SetupWizardForOobe$1;->this$0:Lcom/mediatek/settings/SetupWizardForOobe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/SetupWizardForOobe$1;->this$0:Lcom/mediatek/settings/SetupWizardForOobe;

    const/16 v1, 0x15

    # invokes: Lcom/mediatek/settings/SetupWizardForOobe;->finishActivityByResult(I)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/SetupWizardForOobe;->access$000(Lcom/mediatek/settings/SetupWizardForOobe;I)V

    .line 84
    return-void
.end method
