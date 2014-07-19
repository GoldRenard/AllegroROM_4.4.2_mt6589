.class public interface abstract Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract inputStream()Ljava/io/InputStream;
.end method

.method public abstract length()J
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
