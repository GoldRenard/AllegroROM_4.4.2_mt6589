.class public interface abstract Lcom/lenovo/setupwizard/service/NvRAMAgent;
.super Ljava/lang/Object;
.source "NvRAMAgent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/setupwizard/service/NvRAMAgent$Stub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "lenovo_wizard"


# virtual methods
.method public abstract readFile(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeFile(I[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
