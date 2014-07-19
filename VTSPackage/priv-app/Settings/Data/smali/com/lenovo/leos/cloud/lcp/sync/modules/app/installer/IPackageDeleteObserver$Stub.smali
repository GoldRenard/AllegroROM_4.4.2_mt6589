.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageDeleteObserver.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_packageDeleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.content.pm.IPackageDeleteObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const-string v1, "android.content.pm.IPackageDeleteObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 25
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver;

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 32
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 39
    :sswitch_0
    const-string v3, "android.content.pm.IPackageDeleteObserver"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :sswitch_1
    const-string v3, "android.content.pm.IPackageDeleteObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    .local v1, "arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/IPackageDeleteObserver$Stub;->packageDeleted(Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
