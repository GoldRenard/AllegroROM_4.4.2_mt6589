.class Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;
.super Ljava/lang/Object;
.source "AudioProfilePreferenceLenovo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$100(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Landroid/widget/RadioButton;

    move-result-object v0

    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$000()Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$000()Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$000()Landroid/widget/CompoundButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$100(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mCheckboxButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$100(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Landroid/widget/RadioButton;

    move-result-object v0

    # setter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->sCurrentChecked:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$002(Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;

    .line 150
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$300(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/AudioProfilePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:Click the active profile, do nothing return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
