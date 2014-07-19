.class Lcom/lenovo/setupwizard/fragments/DialogFmt$2;
.super Ljava/lang/Object;
.source "DialogFmt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/fragments/DialogFmt;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/fragments/DialogFmt;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/fragments/DialogFmt;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/setupwizard/fragments/DialogFmt$2;->this$0:Lcom/lenovo/setupwizard/fragments/DialogFmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/DialogFmt$2;->this$0:Lcom/lenovo/setupwizard/fragments/DialogFmt;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/setupwizard/DefaultActivity;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/DefaultActivity;->doPositiveClick()V

    .line 34
    return-void
.end method
