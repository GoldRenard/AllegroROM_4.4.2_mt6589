.class Lcom/lenovo/lsf/account/PsLoginActivity$8$2;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/PsLoginActivity$8;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity$8;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$8$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$8;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$8;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1212
    return-void
.end method
