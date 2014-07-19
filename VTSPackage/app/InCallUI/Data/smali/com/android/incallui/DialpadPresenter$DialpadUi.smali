.class public interface abstract Lcom/android/incallui/DialpadPresenter$DialpadUi;
.super Ljava/lang/Object;
.source "DialpadPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/DialpadPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialpadUi"
.end annotation


# virtual methods
.method public abstract appendDigitsToField(C)V
.end method

.method public abstract displayDialpad(Z)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract setAudio(I)V
.end method

.method public abstract setSupportedAudio(I)V
.end method

.method public abstract setVisible(Z)V
.end method
