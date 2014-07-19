.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;
.super Ljava/lang/Object;
.source "AppPackageFileWriterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation


# virtual methods
.method public abstract onAppUpdate(I)V
.end method

.method public abstract onUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method
