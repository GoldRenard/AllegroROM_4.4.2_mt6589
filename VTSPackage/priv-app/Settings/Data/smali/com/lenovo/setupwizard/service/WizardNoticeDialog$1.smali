.class Lcom/lenovo/setupwizard/service/WizardNoticeDialog$1;
.super Ljava/lang/Object;
.source "WizardNoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$1;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$1;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    # getter for: Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->access$000(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 63
    return-void
.end method
