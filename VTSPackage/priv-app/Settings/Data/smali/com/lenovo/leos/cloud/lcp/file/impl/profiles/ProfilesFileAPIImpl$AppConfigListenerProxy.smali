.class public Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;
.super Ljava/lang/Object;
.source "ProfilesFileAPIImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppConfigListenerProxy"
.end annotation


# instance fields
.field private mDelegateListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "progresslistener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;->mDelegateListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 256
    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 272
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 6
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;->mDelegateListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;->mDelegateListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 266
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 269
    return-void
.end method
