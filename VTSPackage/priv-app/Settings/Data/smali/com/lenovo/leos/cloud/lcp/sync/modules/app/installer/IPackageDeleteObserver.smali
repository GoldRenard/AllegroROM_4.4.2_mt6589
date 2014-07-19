.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;
.super Ljava/lang/Object;
.source "IPackageDeleteObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageDeleted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
