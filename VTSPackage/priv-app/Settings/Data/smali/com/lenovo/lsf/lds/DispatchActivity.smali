.class public Lcom/lenovo/lsf/lds/DispatchActivity;
.super Landroid/app/Activity;
.source "DispatchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    sget v0, Lcom/lenovo/lsf/lds/R$layout;->main:I

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/lds/DispatchActivity;->setContentView(I)V

    .line 12
    const-string v0, "rpsb001"

    invoke-static {p0, v0}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    return-void
.end method
