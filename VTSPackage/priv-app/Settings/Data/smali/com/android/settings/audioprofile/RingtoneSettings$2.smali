.class Lcom/android/settings/audioprofile/RingtoneSettings$2;
.super Ljava/lang/Object;
.source "RingtoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/RingtoneSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 175
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 177
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$000(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$000(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    move-result-object v1

    # invokes: Lcom/android/settings/audioprofile/RingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$100(Lcom/android/settings/audioprofile/RingtoneSettings;ILandroid/preference/Preference;I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$200(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    const/16 v1, 0x40

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$200(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    move-result-object v2

    const/4 v3, 0x3

    # invokes: Lcom/android/settings/audioprofile/RingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$100(Lcom/android/settings/audioprofile/RingtoneSettings;ILandroid/preference/Preference;I)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$300(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$300(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    move-result-object v2

    const/4 v3, 0x4

    # invokes: Lcom/android/settings/audioprofile/RingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$100(Lcom/android/settings/audioprofile/RingtoneSettings;ILandroid/preference/Preference;I)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$400(Lcom/android/settings/audioprofile/RingtoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingtoneSettings$2;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$400(Lcom/android/settings/audioprofile/RingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    # invokes: Lcom/android/settings/audioprofile/RingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v4, v1, v4}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$100(Lcom/android/settings/audioprofile/RingtoneSettings;ILandroid/preference/Preference;I)V

    .line 193
    :cond_3
    return-void
.end method
