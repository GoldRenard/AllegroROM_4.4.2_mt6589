.class public interface abstract Lcom/android/incallui/CallCardPresenter$CallCardUi;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallCardUi"
.end annotation


# virtual methods
.method public abstract checkDisplayFloatCall(Lcom/android/incallui/InCallPresenter$InCallState;)V
.end method

.method public abstract disableSecondHoldCallView()V
.end method

.method public abstract disableSecondIncomingCallView()V
.end method

.method public abstract setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLocation(Ljava/lang/String;)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setPrimaryLabel(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryName(Ljava/lang/String;Z)V
.end method

.method public abstract setPrimaryPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLjava/lang/String;)V
.end method

.method public abstract setSecondaryHold(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
.end method

.method public abstract setSecondaryImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setSecondaryIncoming(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
.end method

.method public abstract setSimIndicator(II)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract updateCallInfoLayout(Lcom/android/incallui/InCallPresenter$InCallState;)V
.end method

.method public abstract updateCallState(Z)V
.end method

.method public abstract updateSecondaryCallBannerBackground(II)V
.end method

.method public abstract updateSecondaryHoldCallBannerBackground(II)V
.end method

.method public abstract updateSecondaryIncomingCallBannerBackground(II)V
.end method

.method public abstract updateVoiceRecordIcon(Z)V
.end method
