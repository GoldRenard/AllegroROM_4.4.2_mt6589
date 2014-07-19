.class Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$2;
.super Ljava/lang/Object;
.source "LicenseAgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->findItemView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$2;->this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    move-object v1, p1

    .line 186
    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "view":Landroid/view/View;
    # getter for: Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view.getMeasuredHeight():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    # getter for: Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v.getScrollY():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    # getter for: Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v.getHeight():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x12c

    if-gt v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$2;->this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    # getter for: Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->agreeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->access$300(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
