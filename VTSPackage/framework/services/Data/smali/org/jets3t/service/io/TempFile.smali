.class public Lorg/jets3t/service/io/TempFile;
.super Ljava/io/File;
.source "TempFile.java"


# static fields
.field private static final serialVersionUID:J = 0x1b5bde0cd20265d7L


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
