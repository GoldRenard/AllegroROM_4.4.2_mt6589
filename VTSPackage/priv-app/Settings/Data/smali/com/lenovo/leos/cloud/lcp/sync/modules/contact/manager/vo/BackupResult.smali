.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/BackupResult;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
.source "BackupResult.java"


# static fields
.field private static final serialVersionUID:J = 0x402c60e5481be850L


# instance fields
.field public backuped:Z

.field public newTimeSum:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/BackupResult;->backuped:Z

    .line 13
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/BackupResult;->newTimeSum:Z

    .line 6
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; backuped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/BackupResult;->backuped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
