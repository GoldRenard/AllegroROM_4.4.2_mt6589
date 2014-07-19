.class Lcom/lenovo/lsf/account/PsLoginActivity$7$2;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/PsLoginActivity$7;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity$7;)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$7$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$7$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$7;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$7;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$7$2;->this$1:Lcom/lenovo/lsf/account/PsLoginActivity$7;

    iget-object v0, v0, Lcom/lenovo/lsf/account/PsLoginActivity$7;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1175
    :cond_0
    return-void
.end method
