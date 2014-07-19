.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;
.super Ljava/lang/Object;
.source "BatchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatchDownloadVisitor"
.end annotation


# virtual methods
.method public abstract onVisit(Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method
