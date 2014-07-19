.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/LCPFileAPI;
.super Ljava/lang/Object;
.source "LCPFileAPI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
        "<+",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final KEY_TASK_ID:Ljava/lang/String; = "taskId"


# virtual methods
.method public abstract batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;",
            ")I"
        }
    .end annotation
.end method

.method public abstract batchUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;"
        }
    .end annotation
.end method

.method public abstract cancel(J)V
.end method

.method public abstract upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation
.end method

.method public abstract upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation
.end method
