.class public Lcom/android/settings/EffectOfScreenSetting;
.super Landroid/app/Activity;
.source "EffectOfScreenSetting.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field static final EFFECT_OF_SCREEN_HUE:Z = true

.field static final EFFECT_OF_SCREEN_SATURATION:Z = true

.field static final EFFECT_OF_SCREEN_SHARPEN:Z = false

.field static final HUE_DEFAULT:I = 0x0

.field static final SATURATION_DEFAULT:I = 0x0

.field static final SATURATION_MODE:I = 0x9

.field static final SHARPEN_DEFAULT:I = 0x0

.field static final SHARPEN_MODE:I = 0x8

.field static mHueValue:I

.field static mSaturationValue:I

.field static mSharpenValue:I


# instance fields
.field applay:Z

.field dialogShow:Z

.field mAlertDialog:Landroid/app/AlertDialog;

.field mBtn:Landroid/widget/LinearLayout;

.field mClickListener:Landroid/view/View$OnClickListener;

.field mHue:Landroid/widget/RadioGroup;

.field mSaturation:Landroid/widget/RadioGroup;

.field mSharpen:Landroid/widget/RadioGroup;

.field mToast:Landroid/widget/Toast;

.field tmpTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    .line 44
    sput v0, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    .line 45
    sput v0, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/EffectOfScreenSetting;->tmpTheme:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/EffectOfScreenSetting;->applay:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/EffectOfScreenSetting;->dialogShow:Z

    .line 140
    new-instance v0, Lcom/android/settings/EffectOfScreenSetting$2;

    invoke-direct {v0, p0}, Lcom/android/settings/EffectOfScreenSetting$2;-><init>(Lcom/android/settings/EffectOfScreenSetting;)V

    iput-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method hueToValue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 250
    :goto_0
    :pswitch_0
    return v0

    .line 244
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 92
    .local v0, "id":I
    invoke-virtual {p0, p2}, Lcom/android/settings/EffectOfScreenSetting;->turnIdtoIndex(I)I

    move-result v1

    .line 93
    .local v1, "index":I
    sparse-switch v0, :sswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 98
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->saturationToValue(I)I

    move-result v3

    sput v3, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    .line 99
    const/16 v3, 0x9

    sget v4, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    invoke-static {v3, v4}, Lcom/mediatek/pq/PictureQuality;->setModeCustom(II)V

    goto :goto_0

    .line 109
    :sswitch_1
    iget-boolean v3, p0, Lcom/android/settings/EffectOfScreenSetting;->dialogShow:Z

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/settings/EffectOfScreenSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    .line 111
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090bd6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090bd5

    new-instance v5, Lcom/android/settings/EffectOfScreenSetting$1;

    invoke-direct {v5, p0}, Lcom/android/settings/EffectOfScreenSetting$1;-><init>(Lcom/android/settings/EffectOfScreenSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/EffectOfScreenSetting;->mAlertDialog:Landroid/app/AlertDialog;

    .line 122
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->hueToValue(I)I

    move-result v3

    sput v3, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    .line 123
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 124
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->hueToValue(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setGammaMode(I)V

    goto :goto_0

    .line 119
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/EffectOfScreenSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 131
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->sharpenToValue(I)I

    move-result v3

    sput v3, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    .line 132
    const/16 v3, 0x8

    sget v4, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    invoke-static {v3, v4}, Lcom/mediatek/pq/PictureQuality;->setModeCustom(II)V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x7f0b011e -> :sswitch_0
        0x7f0b0124 -> :sswitch_1
        0x7f0b0126 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v6, 0x7f04004e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    const v6, 0x7f0b011b

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 52
    .local v2, "container":Landroid/widget/LinearLayout;
    const v6, 0x7f0b011e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mSaturation:Landroid/widget/RadioGroup;

    .line 53
    const v6, 0x7f0b0124

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mHue:Landroid/widget/RadioGroup;

    .line 54
    const v6, 0x7f0b0126

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mSharpen:Landroid/widget/RadioGroup;

    .line 55
    const v6, 0x7f0b0127

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mBtn:Landroid/widget/LinearLayout;

    .line 56
    const v6, 0x7f0b0128

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "applayButton":Landroid/widget/Button;
    const v6, 0x7f0b0129

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 59
    .local v1, "cancelButton":Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mSaturation:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 60
    iget-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mHue:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 61
    iget-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mSharpen:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 64
    const-string v6, "persist.sys.screen_saturation"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    .line 65
    const-string v6, "persist.sys.screen_hue"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    .line 66
    const-string v6, "persist.sys.screen_sharpen"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    .line 69
    iget-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v6, p0, Lcom/android/settings/EffectOfScreenSetting;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v6, 0x7f0b011d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 73
    .local v4, "saturation":Landroid/widget/LinearLayout;
    const v6, 0x7f0b0123

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 74
    .local v3, "hue":Landroid/widget/LinearLayout;
    const v6, 0x7f0b0125

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 82
    .local v5, "sharpen":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    iput-boolean v3, p0, Lcom/android/settings/EffectOfScreenSetting;->dialogShow:Z

    .line 172
    iget-boolean v0, p0, Lcom/android/settings/EffectOfScreenSetting;->applay:Z

    if-nez v0, :cond_3

    .line 183
    sget v0, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    const-string v1, "persist.sys.screen_saturation"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    const-string v1, "persist.sys.screen_hue"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    const-string v1, "persist.sys.screen_sharpen"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090bd7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mToast:Landroid/widget/Toast;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/EffectOfScreenSetting;->applay:Z

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 195
    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mSaturation:Landroid/widget/RadioGroup;

    sget v1, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->valueToSaturation(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->turnIndextoIn(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mHue:Landroid/widget/RadioGroup;

    sget v1, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->valueToHue(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->turnIndextoIn(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/EffectOfScreenSetting;->mSharpen:Landroid/widget/RadioGroup;

    sget v1, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->valueToSharpen(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/EffectOfScreenSetting;->turnIndextoIn(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/EffectOfScreenSetting;->applay:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/EffectOfScreenSetting;->dialogShow:Z

    .line 217
    return-void
.end method

.method saturationToValue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    :pswitch_0
    return v0

    .line 224
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 226
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sharpenToValue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_0

    .line 268
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 266
    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method turnIdtoIndex(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_0

    .line 288
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 282
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0120
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method turnIndextoIn(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 292
    packed-switch p1, :pswitch_data_0

    .line 300
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 294
    :pswitch_0
    const v0, 0x7f0b0120

    goto :goto_0

    .line 296
    :pswitch_1
    const v0, 0x7f0b0121

    goto :goto_0

    .line 298
    :pswitch_2
    const v0, 0x7f0b0122

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method valueToHue(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 254
    packed-switch p1, :pswitch_data_0

    .line 260
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 256
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method valueToSaturation(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 238
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 234
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method valueToSharpen(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 276
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 274
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
