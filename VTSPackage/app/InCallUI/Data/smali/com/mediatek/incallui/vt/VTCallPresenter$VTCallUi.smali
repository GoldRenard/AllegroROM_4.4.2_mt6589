.class public interface abstract Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
.super Ljava/lang/Object;
.source "VTCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/VTCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VTCallUi"
.end annotation


# virtual methods
.method public abstract answerVTCallPre()V
.end method

.method public abstract dialVTCallSuccess()V
.end method

.method public abstract onVTReady()V
.end method

.method public abstract onVTReceiveFirstFrame()V
.end method

.method public abstract showRecord(Z)V
.end method

.method public abstract surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end method

.method public abstract surfaceCreated(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract updateVTScreen()V
.end method
