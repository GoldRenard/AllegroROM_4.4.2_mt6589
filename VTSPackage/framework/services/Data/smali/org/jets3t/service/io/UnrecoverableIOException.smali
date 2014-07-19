.class public Lorg/jets3t/service/io/UnrecoverableIOException;
.super Ljava/io/IOException;
.source "UnrecoverableIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x13c2fe0520a5bec6L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
