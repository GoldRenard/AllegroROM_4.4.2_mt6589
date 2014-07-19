.class Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;
.super Ljava/lang/Object;
.source "SimIconsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/SimIconsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfoViewHolder"
.end annotation


# instance fields
.field mSimBg:Landroid/widget/RelativeLayout;

.field simNumber:Landroid/widget/TextView;

.field simOpName:Landroid/widget/TextView;

.field simSelectedRadio:Landroid/widget/RadioButton;

.field simShortNumber:Landroid/widget/TextView;

.field simStatus:Landroid/widget/ImageView;

.field simType:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/tabsettings/SimIconsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/tabsettings/SimIconsListView$1;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;-><init>()V

    return-void
.end method
