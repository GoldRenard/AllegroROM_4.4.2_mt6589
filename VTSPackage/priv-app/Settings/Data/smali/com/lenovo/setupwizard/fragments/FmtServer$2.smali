.class Lcom/lenovo/setupwizard/fragments/FmtServer$2;
.super Landroid/text/style/ClickableSpan;
.source "FmtServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/fragments/FmtServer;->setLenovoLicenseSpan(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/fragments/FmtServer;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/fragments/FmtServer;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer$2;->this$0:Lcom/lenovo/setupwizard/fragments/FmtServer;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    new-instance v0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer$2;->this$0:Lcom/lenovo/setupwizard/fragments/FmtServer;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->showAlertDialog()V

    .line 186
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 180
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    return-void
.end method
