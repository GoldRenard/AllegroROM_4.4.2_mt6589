.class Lcom/android/settings/audioprofile/RingtoneSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "RingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/RingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/RingtoneSettings;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingtoneSettings$4;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$4;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    invoke-virtual {v0}, Lcom/android/settings/audioprofile/RingtoneSettings;->setStartSoundEnable()V

    .line 220
    return-void
.end method
