.class public Lcom/mediatek/audioprofile/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# static fields
.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "NOTIFICATION"

.field public static final RING_TYPE:Ljava/lang/String; = "RING"

.field private static final SINGLE_SIMCARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Settings/Rt_Pref"


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mKey:Ljava/lang/String;

.field private mNoNeedSIMSelector:Z

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSimId:J

.field private mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    .line 108
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 110
    invoke-static {p1}, Lcom/android/settings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 111
    return-void
.end method


# virtual methods
.method public ismNoNeedSIMSelector()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    return v0
.end method

.method protected onClick()V
    .locals 5

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 194
    .local v1, "simNum":I
    const-string v2, "Settings/Rt_Pref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick  : ismNoNeedSIMSelector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->ismNoNeedSIMSelector()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "simNum <= SINGLE_SIMCARD: simNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->ismNoNeedSIMSelector()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 200
    :cond_0
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 202
    :cond_1
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 146
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    const-string v1, "RING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IAudioProfileExt;->setRingtonePickerParams(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    .line 178
    .local v0, "type":I
    const-string v2, "Settings/Rt_Pref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mSimId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v1

    .line 181
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "Settings/Rt_Pref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-object v1

    .line 181
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 6
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v2

    iget-wide v3, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 167
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setSimId(J)V
    .locals 4
    .param p1, "simId"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 94
    const-string v0, "Settings/Rt_Pref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimId   simId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this.mSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamType"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setmNoNeedSIMSelector(Z)V
    .locals 0
    .param p1, "mNoNeedSIMSelector"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    .line 215
    return-void
.end method

.method simSelectorOnClick()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "Settings/Rt_Pref"

    const-string v1, "onClick  : simSelectorOnClick  "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 207
    return-void
.end method
