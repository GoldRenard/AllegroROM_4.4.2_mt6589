.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
.super Ljava/lang/Object;
.source "InputPipe.java"


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public abstract isRepeatable()Z
.end method

.method public abstract read([BJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
