.class Lcom/lenovo/setupwizard/fragments/FmtServer$1;
.super Landroid/text/style/ClickableSpan;
.source "FmtServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/fragments/FmtServer;->setSpan(Landroid/widget/TextView;)V
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
    .line 150
    iput-object p1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer$1;->this$0:Lcom/lenovo/setupwizard/fragments/FmtServer;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer$1;->this$0:Lcom/lenovo/setupwizard/fragments/FmtServer;

    # invokes: Lcom/lenovo/setupwizard/fragments/FmtServer;->openLenovoExpProtocol()V
    invoke-static {v0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->access$000(Lcom/lenovo/setupwizard/fragments/FmtServer;)V

    .line 162
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 156
    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    return-void
.end method
