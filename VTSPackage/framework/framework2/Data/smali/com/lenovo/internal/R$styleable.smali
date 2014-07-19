.class public final Lcom/lenovo/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LenovoTheme:[I

.field public static final LenovoTheme_author:I = 0x1

.field public static final LenovoTheme_component:I = 0x0

.field public static final LenovoTheme_description:I = 0x2

.field public static final LenovoTheme_preview:I = 0x4

.field public static final LenovoTheme_previewthumb:I = 0x5

.field public static final LenovoTheme_thumbnail:I = 0x3

.field public static final Theme:[I

.field public static final Theme_ideaui_actionMode_actionBarItemBackground:I = 0x2

.field public static final Theme_ideaui_actionMode_split_actionBarItemBackground:I = 0x3

.field public static final Theme_ideaui_actionMode_split_icontext_actionBarItemBackground:I = 0x4

.field public static final Theme_ideaui_alert_activity_dialog_bottom_bright:I = 0xd

.field public static final Theme_ideaui_alert_activity_dialog_top_bright:I = 0xc

.field public static final Theme_ideaui_alert_dialog_button_style:I = 0xb

.field public static final Theme_ideaui_button_text_shadow_color:I = 0x7

.field public static final Theme_ideaui_button_text_shadow_dx:I = 0xa

.field public static final Theme_ideaui_button_text_shadow_dy:I = 0x9

.field public static final Theme_ideaui_button_text_shadow_radius:I = 0x8

.field public static final Theme_ideaui_layout_removeBorders:I = 0x13

.field public static final Theme_ideaui_list_rounded_rect_radius:I = 0xe

.field public static final Theme_ideaui_preference_category_style:I = 0x14

.field public static final Theme_ideaui_rounded_cornor_preference_background_bottom:I = 0x11

.field public static final Theme_ideaui_rounded_cornor_preference_background_middle:I = 0x10

.field public static final Theme_ideaui_rounded_cornor_preference_background_single:I = 0x12

.field public static final Theme_ideaui_rounded_cornor_preference_background_top:I = 0xf

.field public static final Theme_ideaui_rounded_cornor_preference_window_background:I = 0x1

.field public static final Theme_ideaui_single_picker_background:I = 0x17

.field public static final Theme_ideaui_split_actionBarItemBackground:I = 0x5

.field public static final Theme_ideaui_split_icontext_actionBarItemBackground:I = 0x6

.field public static final Theme_ideaui_time_picker_background:I = 0x15

.field public static final Theme_ideaui_time_picker_without_ampm_background:I = 0x16

.field public static final Theme_ideaui_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/internal/R$styleable;->LenovoTheme:[I

    .line 1878
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/internal/R$styleable;->Theme:[I

    return-void

    .line 1736
    :array_0
    .array-data 4
        0x3010018
        0x3010019
        0x301001a
        0x301001b
        0x301001c
        0x301001d
    .end array-data

    .line 1878
    :array_1
    .array-data 4
        0x3010000
        0x3010001
        0x3010002
        0x3010003
        0x3010004
        0x3010005
        0x3010006
        0x3010007
        0x3010008
        0x3010009
        0x301000a
        0x301000b
        0x301000c
        0x301000d
        0x301000e
        0x301000f
        0x3010010
        0x3010011
        0x3010012
        0x3010013
        0x3010014
        0x3010015
        0x3010016
        0x3010017
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
