.class Lcom/android/settings/audioprofile/EditprofileLenovo$1;
.super Ljava/lang/Object;
.source "EditprofileLenovo.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/EditprofileLenovo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/EditprofileLenovo;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/EditprofileLenovo;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo$1;->this$0:Lcom/android/settings/audioprofile/EditprofileLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 419
    const-string v2, "Settings/EditProfile"

    const-string v3, "update"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo$1;->this$0:Lcom/android/settings/audioprofile/EditprofileLenovo;

    # getter for: Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/audioprofile/EditprofileLenovo;->access$000(Lcom/android/settings/audioprofile/EditprofileLenovo;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo$1;->this$0:Lcom/android/settings/audioprofile/EditprofileLenovo;

    # getter for: Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/EditprofileLenovo;->access$100(Lcom/android/settings/audioprofile/EditprofileLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "name":Ljava/lang/String;
    const-string v2, "Settings/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo$1;->this$0:Lcom/android/settings/audioprofile/EditprofileLenovo;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/audioprofile/EditprofileLenovo;->access$200(Lcom/android/settings/audioprofile/EditprofileLenovo;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "vibrateEnabled":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo$1;->this$0:Lcom/android/settings/audioprofile/EditprofileLenovo;

    # getter for: Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/audioprofile/EditprofileLenovo;->access$000(Lcom/android/settings/audioprofile/EditprofileLenovo;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 428
    const-string v2, "Settings/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate setting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "vibrateEnabled":Ljava/lang/String;
    :cond_0
    return-void
.end method
