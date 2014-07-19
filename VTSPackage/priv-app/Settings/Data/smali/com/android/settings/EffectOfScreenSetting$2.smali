.class Lcom/android/settings/EffectOfScreenSetting$2;
.super Ljava/lang/Object;
.source "EffectOfScreenSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EffectOfScreenSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EffectOfScreenSetting;


# direct methods
.method constructor <init>(Lcom/android/settings/EffectOfScreenSetting;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 144
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/EffectOfScreenSetting;->applay:Z

    .line 147
    iget-object v1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v2, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v3, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v3, v3, Lcom/android/settings/EffectOfScreenSetting;->mSaturation:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/EffectOfScreenSetting;->turnIdtoIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EffectOfScreenSetting;->saturationToValue(I)I

    move-result v1

    sput v1, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    .line 148
    iget-object v1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v2, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v3, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v3, v3, Lcom/android/settings/EffectOfScreenSetting;->mHue:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/EffectOfScreenSetting;->turnIdtoIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EffectOfScreenSetting;->hueToValue(I)I

    move-result v1

    sput v1, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    .line 149
    iget-object v1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v2, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v3, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    iget-object v3, v3, Lcom/android/settings/EffectOfScreenSetting;->mSharpen:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/EffectOfScreenSetting;->turnIdtoIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EffectOfScreenSetting;->sharpenToValue(I)I

    move-result v1

    sput v1, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    .line 151
    const-string v1, "persist.sys.screen_saturation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "persist.sys.screen_hue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "persist.sys.screen_sharpen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "EffectOfScreenSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/settings/EffectOfScreenSetting;->mSaturationValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/EffectOfScreenSetting;->mHueValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/EffectOfScreenSetting;->mSharpenValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/EffectOfScreenSetting;->applay:Z

    .line 160
    iget-object v1, p0, Lcom/android/settings/EffectOfScreenSetting$2;->this$0:Lcom/android/settings/EffectOfScreenSetting;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f0b0128
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
