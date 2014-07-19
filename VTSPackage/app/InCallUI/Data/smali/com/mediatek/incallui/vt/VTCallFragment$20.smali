.class Lcom/mediatek/incallui/vt/VTCallFragment$20;
.super Ljava/lang/Object;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;->showStorageFullDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$20;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1603
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$20;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showStorageDialog... , on click, which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1605
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$20;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$2200(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1606
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$20;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$2200(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1609
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1610
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$20;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1611
    return-void
.end method
