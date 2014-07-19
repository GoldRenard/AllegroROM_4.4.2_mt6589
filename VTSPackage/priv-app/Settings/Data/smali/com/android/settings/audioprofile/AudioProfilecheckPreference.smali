.class public Lcom/android/settings/audioprofile/AudioProfilecheckPreference;
.super Landroid/preference/Preference;
.source "AudioProfilecheckPreference.java"


# static fields
.field private static CHECK_TYPE:Ljava/lang/String;

.field private static GENERAL_KEY:Ljava/lang/String;

.field private static GENERAL_TYPE:I

.field private static MEETING_KEY:Ljava/lang/String;

.field private static MEETING_TYPE:I

.field private static OUTDOOR_KEY:Ljava/lang/String;

.field private static OUTDOOR_TYPE:I

.field private static SILENT_KEY:Ljava/lang/String;

.field private static SILENT_TYPE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private general_Button:Landroid/widget/RadioButton;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private meeting_Button:Landroid/widget/RadioButton;

.field private outdoor_Button:Landroid/widget/RadioButton;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

.field private silent_Button:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "AudioProfilecheckPreference"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "profile_type"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->CHECK_TYPE:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_TYPE:I

    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_TYPE:I

    .line 40
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_TYPE:I

    .line 41
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_TYPE:I

    .line 49
    const-string v0, "mtk_audioprofile_general"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_KEY:Ljava/lang/String;

    .line 50
    const-string v0, "mtk_audioprofile_silent"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_KEY:Ljava/lang/String;

    .line 51
    const-string v0, "mtk_audioprofile_meeting"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_KEY:Ljava/lang/String;

    .line 52
    const-string v0, "mtk_audioprofile_outdoor"

    sput-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->radioGroup:Landroid/widget/RadioGroup;

    .line 28
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    .line 29
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    .line 30
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    .line 31
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    .line 57
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->inflateLayout()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->radioGroup:Landroid/widget/RadioGroup;

    .line 28
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    .line 29
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    .line 30
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    .line 31
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    .line 65
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->inflateLayout()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->radioGroup:Landroid/widget/RadioGroup;

    .line 28
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    .line 29
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    .line 30
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    .line 31
    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    .line 73
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->inflateLayout()V

    .line 76
    return-void
.end method

.method private ListenRadioCheckedChanged()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->radioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference$1;-><init>(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 193
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_TYPE:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_TYPE:I

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilecheckPreference;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilecheckPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->changedProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_TYPE:I

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/audioprofile/AudioProfilecheckPreference;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/AudioProfilecheckPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_TYPE:I

    return v0
.end method

.method private changedProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "Typekey"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private getCheckData()I
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .local v0, "spPreferences":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->CHECK_TYPE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, "type":I
    return v1
.end method

.method private inflateLayout()V
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 81
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    const v1, 0x7f0b01a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->radioGroup:Landroid/widget/RadioGroup;

    .line 99
    const v1, 0x7f0b01a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    .line 100
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->setRadiobuttonColor(Landroid/widget/RadioButton;)V

    .line 102
    const v1, 0x7f0b01a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    .line 103
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->setRadiobuttonColor(Landroid/widget/RadioButton;)V

    .line 105
    const v1, 0x7f0b01a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    .line 106
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->setRadiobuttonColor(Landroid/widget/RadioButton;)V

    .line 108
    const v1, 0x7f0b01a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    .line 109
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->setRadiobuttonColor(Landroid/widget/RadioButton;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->ListenRadioCheckedChanged()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->getCheckData()I

    move-result v0

    .line 115
    .local v0, "profileType":I
    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->setRadioButtonCheck(I)V

    .line 116
    return-void
.end method

.method private saveCheckData(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 222
    .local v1, "spPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->CHECK_TYPE:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method

.method private setRadioButtonCheck(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->general_Button:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->silent_Button:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->meeting_Button:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 148
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->outdoor_Button:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setRadiobuttonColor(Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "tv"    # Landroid/widget/RadioButton;

    .prologue
    .line 129
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->initView(Landroid/view/View;)V

    .line 91
    return-object v0
.end method

.method public saveCheckDatabyKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "typeKey"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_TYPE:I

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V

    .line 215
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->getCheckData()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->setRadioButtonCheck(I)V

    .line 217
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->SILENT_TYPE:I

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->MEETING_TYPE:I

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V

    goto :goto_0

    .line 209
    :cond_2
    sget-object v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->OUTDOOR_TYPE:I

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V

    goto :goto_0

    .line 212
    :cond_3
    sget v0, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->GENERAL_TYPE:I

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/AudioProfilecheckPreference;->saveCheckData(I)V

    goto :goto_0
.end method
