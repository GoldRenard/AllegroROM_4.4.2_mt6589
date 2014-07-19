.class public interface abstract Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
.super Ljava/lang/Object;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallButtonUi"
.end annotation


# virtual methods
.method public abstract availableForRecord()Z
.end method

.method public abstract dismissPopupMenu()V
.end method

.method public abstract displayDialpad(Z)V
.end method

.method public abstract displayManageConferencePanel(Z)V
.end method

.method public abstract enableAddCall(Z)V
.end method

.method public abstract enableEnd(Z)V
.end method

.method public abstract enableHold(Z)V
.end method

.method public abstract enableMute(Z)V
.end method

.method public abstract enableRecord(Z)V
.end method

.method public abstract enableSwap(Z)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract hideExtraRow()V
.end method

.method public abstract isDialpadVisible()Z
.end method

.method public abstract setAudio(I)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHold(Z)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setRecord(Z)V
.end method

.method public abstract setSupportedAudio(I)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract showAddCall(Z)V
.end method

.method public abstract showGenericMergeButton()V
.end method

.method public abstract showHold(Z)V
.end method

.method public abstract showManageConferenceCallButton()V
.end method

.method public abstract showMerge(Z)V
.end method

.method public abstract showSwap(Z)V
.end method

.method public abstract updateVTCallButton()V
.end method
