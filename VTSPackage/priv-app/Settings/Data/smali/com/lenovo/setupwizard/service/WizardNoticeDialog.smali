.class public Lcom/lenovo/setupwizard/service/WizardNoticeDialog;
.super Landroid/app/Activity;
.source "WizardNoticeDialog.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/view/View;

.field private mContentTextView:Landroid/widget/TextView;

.field private mIgnoreTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "lenovo_wizard"

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->TAG:Ljava/lang/String;

    const-string v1, "messagebox is opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 39
    const v0, 0x7f040102

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    const v0, 0x7f0b037b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mCheckBoxContainer:Landroid/view/View;

    .line 41
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 42
    const v0, 0x7f0b037a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mContentTextView:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0b037c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mIgnoreTextView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mCheckBoxContainer:Landroid/view/View;

    new-instance v1, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$1;

    invoke-direct {v1, p0}, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$1;-><init>(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0b037e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;

    invoke-direct {v1, p0}, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;-><init>(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 125
    return-void
.end method
