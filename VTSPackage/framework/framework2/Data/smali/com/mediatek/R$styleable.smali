.class public final Lcom/mediatek/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BladeView:[I

.field public static final BladeView_bladeIndicator:I = 0x6

.field public static final BladeView_bladeIndicatorHeight:I = 0xa

.field public static final BladeView_bladeIndicatorWidth:I = 0x9

.field public static final BladeView_disablePromptColor:I = 0xe

.field public static final BladeView_disableSectionColor:I = 0xc

.field public static final BladeView_enablePromptColor:I = 0xd

.field public static final BladeView_enableSectionColor:I = 0xb

.field public static final BladeView_fullSectionsId:I = 0x3

.field public static final BladeView_indicatorTopsId:I = 0x7

.field public static final BladeView_promptAnimationDuration:I = 0x8

.field public static final BladeView_promptHorzOffset:I = 0x0

.field public static final BladeView_promptVertOffset:I = 0x1

.field public static final BladeView_replacedSectionsId:I = 0x4

.field public static final BladeView_sectionBaselinesId:I = 0x5

.field public static final BladeView_sectionFontSize:I = 0x2

.field public static final BookmarkView:[I

.field public static final BookmarkView_dotGap:I = 0x3

.field public static final BookmarkView_imageDispHeight:I = 0x1

.field public static final BookmarkView_imageDispWidth:I = 0x0

.field public static final BookmarkView_imageReflection:I = 0x4

.field public static final BookmarkView_infoColor:I = 0x7

.field public static final BookmarkView_maxZoomOut:I = 0x5

.field public static final BookmarkView_spaceBetweenItems:I = 0x2

.field public static final BookmarkView_titleColor:I = 0x6

.field public static final DecelerateInterpolatorEx:[I

.field public static final ImageSwitch:[I

.field public static final ImageSwitch_android_switchMinWidth:I = 0x3

.field public static final ImageSwitch_android_textOff:I = 0x1

.field public static final ImageSwitch_android_textOn:I = 0x0

.field public static final ImageSwitch_android_thumb:I = 0x2

.field public static final ImageSwitch_android_thumbTextPadding:I = 0x4

.field public static final MTKAppWidgetProviderInfo:[I

.field public static final MTKAppWidgetProviderInfo_hasUsedCustomerView:I = 0x0

.field public static final MTKManifest:[I

.field public static final MTKManifest_isThemePackage:I = 0x0

.field public static final MTKManifest_themeNameId:I = 0x1

.field public static final TextView:[I

.field public static final TextView_smartFit:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 850
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/R$styleable;->BladeView:[I

    .line 1089
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/R$styleable;->BookmarkView:[I

    .line 1226
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/R$styleable;->DecelerateInterpolatorEx:[I

    .line 1247
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/R$styleable;->ImageSwitch:[I

    .line 1291
    new-array v0, v3, [I

    const v1, 0x2010011

    aput v1, v0, v2

    sput-object v0, Lcom/mediatek/R$styleable;->MTKAppWidgetProviderInfo:[I

    .line 1320
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/mediatek/R$styleable;->MTKManifest:[I

    .line 1360
    new-array v0, v3, [I

    const v1, 0x201001a

    aput v1, v0, v2

    sput-object v0, Lcom/mediatek/R$styleable;->TextView:[I

    return-void

    .line 850
    :array_0
    .array-data 4
        0x2010000
        0x2010001
        0x2010002
        0x2010003
        0x2010004
        0x2010005
        0x2010006
        0x2010007
        0x2010008
        0x2010009
        0x201000a
        0x201000b
        0x201000c
        0x201000d
        0x201000e
    .end array-data

    .line 1089
    :array_1
    .array-data 4
        0x2010012
        0x2010013
        0x2010014
        0x2010015
        0x2010016
        0x2010017
        0x2010018
        0x2010019
    .end array-data

    .line 1226
    :array_2
    .array-data 4
        0x201001b
        0x201001c
    .end array-data

    .line 1247
    :array_3
    .array-data 4
        0x1010124
        0x1010125
        0x1010142
        0x1010370
        0x1010372
    .end array-data

    .line 1320
    :array_4
    .array-data 4
        0x201000f
        0x2010010
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
