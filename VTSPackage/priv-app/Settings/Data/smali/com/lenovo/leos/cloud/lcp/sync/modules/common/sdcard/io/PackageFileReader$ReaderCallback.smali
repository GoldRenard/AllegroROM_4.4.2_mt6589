.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;
.super Ljava/lang/Object;
.source "PackageFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReaderCallback"
.end annotation


# virtual methods
.method public abstract onReadEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation
.end method
