.class public interface abstract Lcom/lenovo/widetouch/ITouchWindowServiceBinder;
.super Ljava/lang/Object;
.source "ITouchWindowServiceBinder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/widetouch/ITouchWindowServiceBinder$Stub;
    }
.end annotation


# virtual methods
.method public abstract scheduleHideTouchWindow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleShowTouchWindowByWideTouch(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleTouchWindowMotionEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
