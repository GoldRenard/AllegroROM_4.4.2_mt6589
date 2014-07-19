.class Lcom/lenovo/lsf/account/PsLoginActivity$3;
.super Ljava/lang/Thread;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->getOnkeyPre()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$3;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$3;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$702(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    .line 724
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$3;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$3;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyRegisterDataNew(Landroid/content/Context;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v1

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$202(Lcom/lenovo/lsf/account/PsLoginActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$3;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z
    invoke-static {v0, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$702(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    .line 731
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 729
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$3;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z
    invoke-static {v0, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$702(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$3;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$702(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    throw v0
.end method
