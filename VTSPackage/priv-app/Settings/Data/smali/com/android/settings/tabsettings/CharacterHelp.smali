.class public Lcom/android/settings/tabsettings/CharacterHelp;
.super Landroid/app/Activity;
.source "CharacterHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 39
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "key"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "key":Ljava/lang/String;
    const-string v7, "swing_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 43
    const v7, 0x7f040021

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    :goto_0
    const v7, 0x7f0b003d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 63
    .local v3, "img":Landroid/widget/ImageView;
    const v7, 0x7f0b003e

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 64
    .local v6, "summaryText":Landroid/widget/TextView;
    const-string v7, "pocket_mode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 65
    const v7, 0x7f090109

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 66
    const v7, 0x7f0900ed

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 67
    const v7, 0x7f020120

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    :goto_1
    const-string v7, "wifi_switch_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "smartscene_home_roadcondition"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 117
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 120
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v7, 0x7f0b003f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 121
    .local v1, "bttn_know_it":Landroid/widget/Button;
    new-instance v7, Lcom/android/settings/tabsettings/CharacterHelp$1;

    invoke-direct {v7, p0}, Lcom/android/settings/tabsettings/CharacterHelp$1;-><init>(Lcom/android/settings/tabsettings/CharacterHelp;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v7, 0x7f0b0040

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 129
    .local v2, "bttn_try":Landroid/widget/Button;
    if-eqz v2, :cond_1

    new-instance v7, Lcom/android/settings/tabsettings/CharacterHelp$2;

    invoke-direct {v7, p0}, Lcom/android/settings/tabsettings/CharacterHelp$2;-><init>(Lcom/android/settings/tabsettings/CharacterHelp;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .end local v1    # "bttn_know_it":Landroid/widget/Button;
    .end local v2    # "bttn_try":Landroid/widget/Button;
    :cond_1
    :goto_2
    return-void

    .line 47
    .end local v3    # "img":Landroid/widget/ImageView;
    .end local v6    # "summaryText":Landroid/widget/TextView;
    :cond_2
    const-string v7, "wifi_switch_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 49
    const v7, 0x7f040020

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v7, "smartscene_home_roadcondition"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 54
    const v7, 0x7f04001f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 59
    :cond_4
    const v7, 0x7f04001e

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 68
    .restart local v3    # "img":Landroid/widget/ImageView;
    .restart local v6    # "summaryText":Landroid/widget/TextView;
    :cond_5
    const-string v7, "ringtone_weaken"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 69
    const v7, 0x7f09010b

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 70
    const v7, 0x7f0900ee

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 71
    const v7, 0x7f020125

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 72
    :cond_6
    const-string v7, "mercury_keyboard"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 73
    const v7, 0x7f090156

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 74
    const v7, 0x7f0900ef

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 75
    const v7, 0x7f020119

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 76
    :cond_7
    const-string v7, "slide_unlock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 77
    const v7, 0x7f09014f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 78
    const v7, 0x7f0900f0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 79
    const v7, 0x7f020132

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 80
    :cond_8
    const-string v7, "swing_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 81
    const v7, 0x7f090147

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 82
    const v7, 0x7f0900f1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const v7, 0x7f02013a

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 84
    :cond_9
    const-string v7, "side_key_backlight"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 85
    const v7, 0x7f09014d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 86
    const v7, 0x7f0900f2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 87
    const v7, 0x7f02012a

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 91
    :cond_a
    const-string v7, "wifi_switch_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 93
    const v7, 0x7f09015b

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 94
    const v7, 0x7f090bfc

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 95
    const v7, 0x7f020186

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 98
    :cond_b
    const-string v7, "smartscene_home_roadcondition"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 100
    const v7, 0x7f090c48

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 101
    const v7, 0x7f090c4c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 102
    const v7, 0x7f020172

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 106
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2
.end method
