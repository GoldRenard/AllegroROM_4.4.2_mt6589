.class public Lcom/mediatek/settings/SetupWizardForOobe;
.super Landroid/app/Activity;
.source "SetupWizardForOobe.java"


# static fields
.field private static final EXTRA_DATE_TIME_SETTINGS:Ljava/lang/String; = "extra_date_time_settings"

.field private static final EXTRA_DEFAULT_SIM_SETTINGS:Ljava/lang/String; = "extra_default_sim_settings"

.field private static final EXTRA_IS_OOBE:Ljava/lang/String; = "extra_is_oobe"

.field private static final EXTRA_OOBE_SETTINGS:Ljava/lang/String; = "extra_oobe_settings"

.field private static final EXTRA_SIM_INFO_EDITOR:Ljava/lang/String; = "extra_sim_info_editor"

.field private static final EXTRA_SIM_INFO_SETTINGS:Ljava/lang/String; = "extra_sim_info_settings"

.field private static final EXTRA_WIFI_SETTINGS:Ljava/lang/String; = "extra_wifi_settings"

.field private static final EXTRA_ZONE_PICKER:Ljava/lang/String; = "extra_zone_picker"

.field private static final ID_DATE_TIME_SETTINGS:I = 0x2

.field private static final ID_DEFAULT_SIM_SETTINGS:I = 0x4

.field private static final ID_SIM_INFO_EDITOR:I = 0xb

.field private static final ID_SIM_INFO_SETTINGS:I = 0x3

.field private static final ID_WIFI_SETTINGS:I = 0x7

.field private static final ID_ZONE_PICKER:I = 0xa

.field private static final OOBE_BASIC_STEP_INDEX:Ljava/lang/String; = "oobe_step_index"

.field private static final OOBE_BASIC_STEP_TOTAL:Ljava/lang/String; = "oobe_step_total"

.field private static final OOBE_HAS_RUN_KEY:Ljava/lang/String; = "oobe_has_run"

.field private static final RESULT_OOBE_BACK:I = 0x15

.field private static final RESULT_OOBE_NEXT:I = 0x14

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SetupWizardForOobe"


# instance fields
.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mFirstRunMode:Z

.field private mNeedAnim:Z

.field private mNextListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/SetupWizardForOobe;->mNeedAnim:Z

    .line 80
    new-instance v0, Lcom/mediatek/settings/SetupWizardForOobe$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/SetupWizardForOobe$1;-><init>(Lcom/mediatek/settings/SetupWizardForOobe;)V

    iput-object v0, p0, Lcom/mediatek/settings/SetupWizardForOobe;->mBackListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/mediatek/settings/SetupWizardForOobe$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/SetupWizardForOobe$2;-><init>(Lcom/mediatek/settings/SetupWizardForOobe;)V

    iput-object v0, p0, Lcom/mediatek/settings/SetupWizardForOobe;->mNextListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/SetupWizardForOobe;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SetupWizardForOobe;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mediatek/settings/SetupWizardForOobe;->finishActivityByResult(I)V

    return-void
.end method

.method private finishActivityByResult(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 183
    iget-boolean v1, p0, Lcom/mediatek/settings/SetupWizardForOobe;->mNeedAnim:Z

    if-eqz v1, :cond_0

    .line 184
    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 185
    const v1, 0x7f050002

    const v2, 0x7f050001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const/high16 v1, 0x7f050000

    const v2, 0x7f050003

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 23

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 106
    .local v8, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v17

    .line 107
    .local v17, "transaction":Landroid/app/FragmentTransaction;
    const v20, 0x7f0b0031

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 108
    .local v15, "title":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "extra_oobe_settings"

    const/16 v22, -0x1

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 109
    .local v13, "stepId":I
    packed-switch v13, :pswitch_data_0

    .line 148
    :goto_0
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentTransaction;->commit()I

    .line 150
    const v20, 0x7f0b0037

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 151
    .local v3, "backBtn":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/SetupWizardForOobe;->mBackListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v20, 0x7f0b0038

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 153
    .local v9, "nextBtn":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/SetupWizardForOobe;->mNextListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "oobe_step_total"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 156
    .local v16, "totalStep":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "oobe_step_index"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 157
    .local v14, "stepIndex":I
    const v20, 0x7f0b0240

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 158
    .local v10, "progressBar":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v7, v0, :cond_1

    .line 159
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 160
    .local v4, "child":Landroid/widget/ImageView;
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_0

    .line 161
    const v20, 0x7f020163

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 111
    .end local v3    # "backBtn":Landroid/widget/Button;
    .end local v4    # "child":Landroid/widget/ImageView;
    .end local v7    # "i":I
    .end local v9    # "nextBtn":Landroid/widget/Button;
    .end local v10    # "progressBar":Landroid/widget/LinearLayout;
    .end local v14    # "stepIndex":I
    .end local v16    # "totalStep":I
    :pswitch_1
    const v20, 0x7f0904a3

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 112
    new-instance v5, Lcom/android/settings/DateTimeSettings;

    invoke-direct {v5}, Lcom/android/settings/DateTimeSettings;-><init>()V

    .line 113
    .local v5, "dateTimeSettings":Lcom/android/settings/DateTimeSettings;
    const v20, 0x7f0b0298

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 116
    .end local v5    # "dateTimeSettings":Lcom/android/settings/DateTimeSettings;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/SetupWizardForOobe;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-object/from16 v20, v0

    const v21, 0x7f09030e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    invoke-interface/range {v20 .. v22}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v11, Lcom/mediatek/gemini/SimManagement;

    invoke-direct {v11}, Lcom/mediatek/gemini/SimManagement;-><init>()V

    .line 119
    .local v11, "simInfo":Lcom/mediatek/gemini/SimManagement;
    const v20, 0x7f0b0298

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 122
    .end local v11    # "simInfo":Lcom/mediatek/gemini/SimManagement;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/SetupWizardForOobe;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-object/from16 v20, v0

    const v21, 0x7f09030f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    invoke-interface/range {v20 .. v22}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v6, Lcom/mediatek/gemini/SimManagement;

    invoke-direct {v6}, Lcom/mediatek/gemini/SimManagement;-><init>()V

    .line 125
    .local v6, "defaultSim":Lcom/mediatek/gemini/SimManagement;
    const v20, 0x7f0b0298

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 128
    .end local v6    # "defaultSim":Lcom/mediatek/gemini/SimManagement;
    :pswitch_4
    const v20, 0x7f0905f4

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    new-instance v18, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {v18 .. v18}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 130
    .local v18, "wifiSettings":Lcom/android/settings/wifi/WifiSettings;
    const v20, 0x7f0b0298

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 133
    .end local v18    # "wifiSettings":Lcom/android/settings/wifi/WifiSettings;
    :pswitch_5
    const v20, 0x7f09051a

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 134
    new-instance v19, Lcom/android/settings/ZonePicker;

    invoke-direct/range {v19 .. v19}, Lcom/android/settings/ZonePicker;-><init>()V

    .line 135
    .local v19, "zonePicker":Lcom/android/settings/ZonePicker;
    const v20, 0x7f0b0298

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 136
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/settings/SetupWizardForOobe;->mNeedAnim:Z

    goto/16 :goto_0

    .line 139
    .end local v19    # "zonePicker":Lcom/android/settings/ZonePicker;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/SetupWizardForOobe;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-object/from16 v20, v0

    const v21, 0x7f090201

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    invoke-interface/range {v20 .. v22}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    new-instance v12, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-direct {v12}, Lcom/mediatek/gemini/SimInfoEditor;-><init>()V

    .line 142
    .local v12, "simInfoEditor":Lcom/mediatek/gemini/SimInfoEditor;
    const v20, 0x7f0b0298

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 143
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/settings/SetupWizardForOobe;->mNeedAnim:Z

    goto/16 :goto_0

    .line 165
    .end local v12    # "simInfoEditor":Lcom/mediatek/gemini/SimInfoEditor;
    .restart local v3    # "backBtn":Landroid/widget/Button;
    .restart local v7    # "i":I
    .restart local v9    # "nextBtn":Landroid/widget/Button;
    .restart local v10    # "progressBar":Landroid/widget/LinearLayout;
    .restart local v14    # "stepIndex":I
    .restart local v16    # "totalStep":I
    :cond_1
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f0400cd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oobe_has_run"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/SetupWizardForOobe;->mFirstRunMode:Z

    .line 100
    invoke-static {p0}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SetupWizardForOobe;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 101
    invoke-direct {p0}, Lcom/mediatek/settings/SetupWizardForOobe;->initLayout()V

    .line 102
    return-void

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 169
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 170
    const-string v0, "SetupWizardForOobe"

    const-string v1, "Press back button to former settings"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v0, p0, Lcom/mediatek/settings/SetupWizardForOobe;->mFirstRunMode:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 174
    :cond_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/mediatek/settings/SetupWizardForOobe;->finishActivityByResult(I)V

    .line 176
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
