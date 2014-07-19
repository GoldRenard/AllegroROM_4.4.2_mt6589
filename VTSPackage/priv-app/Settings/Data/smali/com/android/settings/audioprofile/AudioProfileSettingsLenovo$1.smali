.class Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$1;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileSettingsLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;

    # invokes: Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->updateActivePreference()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;->access$000(Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo;)V

    .line 57
    return-void
.end method
