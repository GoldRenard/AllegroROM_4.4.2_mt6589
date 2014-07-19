.class Lcom/android/settings/tabsettings/CommonSettings$5;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "CommonSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/CommonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CommonSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CommonSettings;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/tabsettings/CommonSettings$5;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings$5;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    invoke-static {v0}, Lcom/android/settings/tabsettings/CommonSettings;->access$300(Lcom/android/settings/tabsettings/CommonSettings;)Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->setProfile(Ljava/lang/String;Z)V

    .line 353
    :cond_0
    return-void
.end method
