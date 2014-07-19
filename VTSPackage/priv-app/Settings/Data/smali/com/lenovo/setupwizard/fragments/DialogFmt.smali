.class public Lcom/lenovo/setupwizard/fragments/DialogFmt;
.super Landroid/app/DialogFragment;
.source "DialogFmt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/lenovo/setupwizard/fragments/DialogFmt;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/lenovo/setupwizard/fragments/DialogFmt;

    invoke-direct {v0}, Lcom/lenovo/setupwizard/fragments/DialogFmt;-><init>()V

    .line 17
    .local v0, "fragment":Lcom/lenovo/setupwizard/fragments/DialogFmt;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c53

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c54

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bf2

    new-instance v2, Lcom/lenovo/setupwizard/fragments/DialogFmt$2;

    invoke-direct {v2, p0}, Lcom/lenovo/setupwizard/fragments/DialogFmt$2;-><init>(Lcom/lenovo/setupwizard/fragments/DialogFmt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bf3

    new-instance v2, Lcom/lenovo/setupwizard/fragments/DialogFmt$1;

    invoke-direct {v2, p0}, Lcom/lenovo/setupwizard/fragments/DialogFmt$1;-><init>(Lcom/lenovo/setupwizard/fragments/DialogFmt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 24
    return-void
.end method
