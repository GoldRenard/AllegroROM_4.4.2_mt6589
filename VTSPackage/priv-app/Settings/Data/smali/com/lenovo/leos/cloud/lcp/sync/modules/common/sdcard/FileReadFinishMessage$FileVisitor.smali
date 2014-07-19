.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;
.super Ljava/lang/Object;
.source "FileReadFinishMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileVisitor"
.end annotation


# virtual methods
.method public abstract onfinish(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;",
            ">;)Z"
        }
    .end annotation
.end method
