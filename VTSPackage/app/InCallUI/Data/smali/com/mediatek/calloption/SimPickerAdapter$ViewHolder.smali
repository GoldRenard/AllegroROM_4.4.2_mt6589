.class public Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mDisplayName:Landroid/widget/TextView;

.field public mInternetIcon:Landroid/widget/ImageView;

.field public mPhoneNumber:Landroid/widget/TextView;

.field public mRadioButton:Landroid/widget/RadioButton;

.field public mShortPhoneNumber:Landroid/widget/TextView;

.field public mSimIcon:Landroid/view/View;

.field public mSimSignal:Landroid/widget/TextView;

.field public mSimStatus:Landroid/widget/ImageView;

.field public mSuggested:Landroid/widget/TextView;

.field public mText:Landroid/widget/TextView;

.field public mText3G:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mediatek/calloption/SimPickerAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/calloption/SimPickerAdapter;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/calloption/SimPickerAdapter$ViewHolder;->this$0:Lcom/mediatek/calloption/SimPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
