.class Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask$1;
.super Ljava/lang/Object;
.source "SettingBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 3
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;

    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifySubProgress(F)V

    .line 79
    return-void
.end method
