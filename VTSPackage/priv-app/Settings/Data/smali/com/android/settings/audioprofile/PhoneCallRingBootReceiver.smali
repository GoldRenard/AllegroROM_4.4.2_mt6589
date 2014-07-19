.class public Lcom/android/settings/audioprofile/PhoneCallRingBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCallRingBootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneCallRingBootReceiver"


# instance fields
.field private mResetProfileVolume:Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v0, "PhoneCallRingBootReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;

    invoke-direct {v0}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;-><init>()V

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingBootReceiver;->mResetProfileVolume:Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;

    .line 26
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingBootReceiver;->mResetProfileVolume:Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;

    invoke-virtual {v0, p1}, Lcom/android/settings/audioprofile/RestoreRingtoneVolumeForPocket;->ResetProfileVolume(Landroid/content/Context;)V

    .line 28
    return-void
.end method
