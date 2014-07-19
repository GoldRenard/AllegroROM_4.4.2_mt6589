.class public Lcom/android/incallui/InCallPresenter$ResourceId;
.super Ljava/lang/Object;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceId"
.end annotation


# instance fields
.field public mId:I

.field public mRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/content/res/Resources;I)V
    .locals 0
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$ResourceId;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$ResourceId;->mRes:Landroid/content/res/Resources;

    .line 119
    iput p3, p0, Lcom/android/incallui/InCallPresenter$ResourceId;->mId:I

    .line 120
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$ResourceId;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$ResourceId;->mRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/incallui/InCallPresenter$ResourceId;->mId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    :cond_0
    return-object v0
.end method
