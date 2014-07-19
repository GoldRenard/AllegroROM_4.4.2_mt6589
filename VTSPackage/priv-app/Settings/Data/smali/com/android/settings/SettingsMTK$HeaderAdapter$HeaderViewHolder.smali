.class Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "SettingsMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsMTK$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field button_:Landroid/widget/ImageButton;

.field divider_:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field switch_:Landroid/widget/Switch;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsMTK$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsMTK$1;

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method
