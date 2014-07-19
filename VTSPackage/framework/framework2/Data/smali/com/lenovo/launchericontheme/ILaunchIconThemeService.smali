.class public interface abstract Lcom/lenovo/launchericontheme/ILaunchIconThemeService;
.super Ljava/lang/Object;
.source "ILaunchIconThemeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/launchericontheme/ILaunchIconThemeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDrawableIconIDFromThemePackage(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDrawableIconIDFromThemePackageExtend(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDrawableIconStrFromThemePackage(Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
