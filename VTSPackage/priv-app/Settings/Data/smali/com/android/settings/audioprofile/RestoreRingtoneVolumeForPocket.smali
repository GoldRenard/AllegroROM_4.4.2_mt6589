.class public Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;
.super Ljava/lang/Object;
.source "RestoreRingtoneVolumeForPocket.java"


# static fields
.field public static final POCKET_ENABLE:Ljava/lang/String; = "pocket_enable"

.field public static final SHARE_PREFERENCE_NAME:Ljava/lang/String; = "silent3"

.field private static final TAG:Ljava/lang/String; = "PhoneCallRingWeakenReceiver"

.field public static final VOLUME_NUM:Ljava/lang/String; = "Volume_num"

.field public static final VOLUME_NUM_WEAKEN:Ljava/lang/String; = "Volume_num_weaken"

.field public static final WEAKE_ENABLE:Ljava/lang/String; = "weake_enable"


# instance fields
.field private mAudioMgr:Landroid/media/AudioManager;

.field private mProfile:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getData()I
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->mcontext:Landroid/content/Context;

    const-string v2, "silent3"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    .local v0, "spPreferences":Landroid/content/SharedPreferences;
    const-string v1, "Volume_num"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPocketEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mcontext"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v1, "silent3"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, "spPreferences":Landroid/content/SharedPreferences;
    const-string v1, "pocket_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getWeakenEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mcontext"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string v1, "silent3"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "spPreferences":Landroid/content/SharedPreferences;
    const-string v1, "weake_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private saveData(I)V
    .locals 5
    .param p1, "data"    # I

    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->mcontext:Landroid/content/Context;

    const-string v3, "silent3"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, "spPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Volume_num"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method

.method public static setPocketEnable(ZLandroid/content/Context;)V
    .locals 4
    .param p0, "enable"    # Z
    .param p1, "mcontext"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v2, "silent3"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, "spPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pocket_enable"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public static setWeakeEnable(ZLandroid/content/Context;)V
    .locals 4
    .param p0, "enable"    # Z
    .param p1, "mcontext"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v2, "silent3"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "spPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "weake_enable"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method


# virtual methods
.method public ResetProfileVolume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string v1, "PhoneCallRingWeakenReceiver"

    const-string v2, "ResetProfileVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object p1, p0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->mcontext:Landroid/content/Context;

    .line 31
    const-string v1, "audioprofile"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->mProfile:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 32
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->mAudioMgr:Landroid/media/AudioManager;

    .line 34
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->getData()I

    move-result v0

    .line 35
    .local v0, "data_volume":I
    const-string v1, "PhoneCallRingWeakenReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume_num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-ltz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->mProfile:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->mProfile:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 39
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->saveData(I)V

    .line 41
    :cond_0
    return-void
.end method
