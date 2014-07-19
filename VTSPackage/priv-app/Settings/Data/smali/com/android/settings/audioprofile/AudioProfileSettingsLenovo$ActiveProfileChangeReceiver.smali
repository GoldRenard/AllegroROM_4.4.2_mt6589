.class public Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$ActiveProfileChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileSettingsLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActiveProfileChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;


# direct methods
.method public constructor <init>(Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$ActiveProfileChangeReceiver;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$ActiveProfileChangeReceiver;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;

    # invokes: Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->updateActivePreference()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->access$000(Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;)V

    .line 196
    return-void
.end method
