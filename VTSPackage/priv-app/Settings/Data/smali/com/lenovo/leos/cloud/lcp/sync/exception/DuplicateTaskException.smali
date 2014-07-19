.class public Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
.super Ljava/lang/Exception;
.source "DuplicateTaskException.java"


# static fields
.field private static final serialVersionUID:J = 0x5f1526cda2f9b599L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "unsupported task type"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
