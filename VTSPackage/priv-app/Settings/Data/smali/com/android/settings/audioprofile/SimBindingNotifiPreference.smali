.class public Lcom/android/settings/audioprofile/SimBindingNotifiPreference;
.super Landroid/preference/RingtonePreference;
.source "SimBindingNotifiPreference.java"


# static fields
.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "NOTIFICATION"

.field public static final RING_TYPE:Ljava/lang/String; = "RING"

.field private static final TAG:Ljava/lang/String; = "SimBindingNotifiPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSimId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mSimId:J

    .line 32
    iput-object p1, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 100
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string v0, "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    .line 161
    .local v0, "type":I
    const-string v2, "SimBindingNotifiPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mSimId:J

    invoke-static {v2, v0, v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUriBySimId(Landroid/content/Context;IJ)Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 168
    const-string v2, "SimBindingNotifiPreference"

    const-string v3, "onRestoreRingtone: using default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const-string v3, "SimBindingNotifiPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_1

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-object v1

    .line 171
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 4
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    .line 139
    .local v1, "type":I
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const-string v0, "sms_notifi_sound"

    .line 142
    .local v0, "setting":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    return-void

    .line 139
    .end local v0    # "setting":Ljava/lang/String;
    :cond_0
    const-string v0, "sms_notifi_sound_2"

    goto :goto_0

    .line 142
    .restart local v0    # "setting":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setRingtoneType(I)V
    .locals 10
    .param p1, "type"    # I

    .prologue
    const v9, 0x7f09013c

    const v8, 0x7f09013b

    .line 38
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "slotId":I
    const/16 v4, 0x40

    if-eq p1, v4, :cond_0

    const/16 v4, 0x80

    if-ne p1, v4, :cond_1

    .line 45
    :cond_0
    const/4 v1, 0x1

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090116

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 52
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 56
    :cond_2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 57
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 83
    :goto_0
    return-void

    .line 59
    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "slotText":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    .end local v2    # "slotText":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 69
    :cond_5
    iget-wide v4, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v4, p0, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->mSimId:J

    .line 76
    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2    # "slotText":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    .end local v2    # "slotText":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
