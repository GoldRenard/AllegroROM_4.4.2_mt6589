.class public Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;
.super Ljava/lang/Object;
.source "SnapshotProgressListener.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# static fields
.field public static final STEP_BEFORE_START:I = 0x0

.field public static final STEP_ON_FINISH:I = 0x3

.field public static final STEP_ON_PROGRESS:I = 0x2

.field public static final STEP_ON_START:I = 0x1


# instance fields
.field private delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private lastBundle:Landroid/os/Bundle;

.field private lastCurrent:J

.field private lastSubBundle:Landroid/os/Bundle;

.field private lastSubCurrent:J

.field private lastSubTotal:J

.field private lastTotal:J

.field private step:I


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 4
    .param p1, "progressListenr"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->step:I

    .line 10
    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastBundle:Landroid/os/Bundle;

    .line 11
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastCurrent:J

    .line 12
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastTotal:J

    .line 14
    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubBundle:Landroid/os/Bundle;

    .line 15
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubCurrent:J

    .line 16
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubTotal:J

    .line 36
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 37
    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-object v0
.end method

.method public getLastBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLastCurrent()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastCurrent:J

    return-wide v0
.end method

.method public getLastSubBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLastSubCurrent()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubCurrent:J

    return-wide v0
.end method

.method public getLastSubTotal()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubTotal:J

    return-wide v0
.end method

.method public getLastTotal()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastTotal:J

    return-wide v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->step:I

    return v0
.end method

.method public onFinish(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastBundle:Landroid/os/Bundle;

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->step:I

    .line 77
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 6
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastBundle:Landroid/os/Bundle;

    .line 52
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastCurrent:J

    .line 53
    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastTotal:J

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->step:I

    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastBundle:Landroid/os/Bundle;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->step:I

    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 6
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubBundle:Landroid/os/Bundle;

    .line 64
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubCurrent:J

    .line 65
    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubTotal:J

    .line 67
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    .line 70
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->step:I

    .line 26
    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastBundle:Landroid/os/Bundle;

    .line 27
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastCurrent:J

    .line 28
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastTotal:J

    .line 30
    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubBundle:Landroid/os/Bundle;

    .line 31
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubCurrent:J

    .line 32
    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubTotal:J

    .line 33
    return-void
.end method

.method public setDelegate(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "delegate"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->delegate:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 144
    return-void
.end method

.method public setLastBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "lastBundle"    # Landroid/os/Bundle;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastBundle:Landroid/os/Bundle;

    .line 96
    return-void
.end method

.method public setLastCurrent(J)V
    .locals 0
    .param p1, "lastCurrent"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastCurrent:J

    .line 104
    return-void
.end method

.method public setLastSubBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "lastSubBundle"    # Landroid/os/Bundle;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubBundle:Landroid/os/Bundle;

    .line 120
    return-void
.end method

.method public setLastSubCurrent(J)V
    .locals 0
    .param p1, "lastSubCurrent"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubCurrent:J

    .line 128
    return-void
.end method

.method public setLastSubTotal(J)V
    .locals 0
    .param p1, "lastSubTotal"    # J

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastSubTotal:J

    .line 136
    return-void
.end method

.method public setLastTotal(J)V
    .locals 0
    .param p1, "lastTotal"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->lastTotal:J

    .line 112
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->step:I

    .line 88
    return-void
.end method
