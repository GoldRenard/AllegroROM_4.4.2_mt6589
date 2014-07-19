.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;
.super Ljava/lang/Object;
.source "SettingPackageFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageReaderCallback"
.end annotation


# virtual methods
.method public abstract onGetInputStream(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
