.class public Lcom/android/settings/wifi/BaseBR$TransProgressListener;
.super Ljava/lang/Object;
.source "BaseBR.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/BaseBR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransProgressListener"
.end annotation


# instance fields
.field private m_trans_info:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/settings/wifi/BaseBR$TransProgressListener;->m_trans_info:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 206
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 203
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 200
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0
    .param p1, "current"    # J
    .param p3, "total"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p5}, Lcom/android/settings/wifi/BaseBR$TransProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    .line 197
    return-void
.end method
