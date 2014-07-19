.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;
.super Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
.source "ApkParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x6bb2be651640eacdL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 9
    return-void
.end method
