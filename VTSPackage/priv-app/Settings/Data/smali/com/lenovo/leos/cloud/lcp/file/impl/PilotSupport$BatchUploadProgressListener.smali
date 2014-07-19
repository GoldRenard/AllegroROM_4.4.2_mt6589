.class final Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;
.super Ljava/lang/Object;
.source "PilotSupport.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BatchUploadProgressListener"
.end annotation


# instance fields
.field private progress:J

.field private subProgress:J

.field private totalLength:J

.field private totalProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method public constructor <init>(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "totalLength"    # J
    .param p3, "totalProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->totalLength:J

    .line 85
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->totalProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 86
    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->progress:J

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->totalLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->totalProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 6
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->progress:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->progress:J

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->subProgress:J

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->totalProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->progress:J

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->subProgress:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->totalLength:J

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    .line 105
    return-void

    .line 101
    :cond_0
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->subProgress:J

    goto :goto_0
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->progress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;->totalProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 108
    return-void
.end method
