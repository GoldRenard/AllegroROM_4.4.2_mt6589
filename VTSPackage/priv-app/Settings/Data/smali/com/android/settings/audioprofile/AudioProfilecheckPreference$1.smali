.class Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;
.super Ljava/lang/Object;
.source "AudioProfilecheckPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->ListenRadioCheckedChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$000(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_TYPE:I
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$100()I

    move-result v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$200(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;I)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$300()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$400(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$500(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_TYPE:I
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$600()I

    move-result v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$200(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$700()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$400(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$800(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_TYPE:I
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$900()I

    move-result v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$200(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$1000()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$400(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$1100(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_TYPE:I
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$1200()I

    move-result v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$200(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;->this$0:Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    # getter for: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$1300()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->access$400(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;Ljava/lang/String;)V

    goto :goto_0
.end method
