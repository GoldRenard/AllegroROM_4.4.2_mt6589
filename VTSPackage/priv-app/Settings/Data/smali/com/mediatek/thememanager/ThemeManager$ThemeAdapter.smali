.class Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/thememanager/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThemeAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThemeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/thememanager/ThemeData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/thememanager/ThemeManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/thememanager/ThemeManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/thememanager/ThemeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p3, "themeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/thememanager/ThemeData;>;"
    iput-object p1, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->mContext:Landroid/content/Context;

    .line 305
    iput-object p3, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->mThemeDatas:Ljava/util/ArrayList;

    .line 306
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->mThemeDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->mThemeDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 320
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "holder":Lcom/mediatek/thememanager/ThemeManager$ViewHolder;
    if-nez p2, :cond_0

    .line 327
    iget-object v4, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    # getter for: Lcom/mediatek/thememanager/ThemeManager;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/mediatek/thememanager/ThemeManager;->access$500(Lcom/mediatek/thememanager/ThemeManager;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400d6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 328
    new-instance v0, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;

    .end local v0    # "holder":Lcom/mediatek/thememanager/ThemeManager$ViewHolder;
    invoke-direct {v0}, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;-><init>()V

    .line 329
    .restart local v0    # "holder":Lcom/mediatek/thememanager/ThemeManager$ViewHolder;
    const v4, 0x7f0b02a6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;->mText:Landroid/widget/TextView;

    .line 331
    const v4, 0x7f0b02a5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 333
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 338
    :goto_0
    iget-object v4, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->mThemeDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/thememanager/ThemeData;

    .line 339
    .local v3, "themeData":Lcom/mediatek/thememanager/ThemeData;
    iget-object v4, v0, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/mediatek/thememanager/ThemeData;->getThemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v4, "android"

    invoke-virtual {v3}, Lcom/mediatek/thememanager/ThemeData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    iget-object v4, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 344
    .local v1, "mDefaultPreviewImage":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 351
    .end local v1    # "mDefaultPreviewImage":Landroid/graphics/Bitmap;
    :goto_1
    return-object p2

    .line 335
    .end local v3    # "themeData":Lcom/mediatek/thememanager/ThemeData;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/mediatek/thememanager/ThemeManager$ViewHolder;
    check-cast v0, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;

    .restart local v0    # "holder":Lcom/mediatek/thememanager/ThemeManager$ViewHolder;
    goto :goto_0

    .line 347
    .restart local v3    # "themeData":Lcom/mediatek/thememanager/ThemeData;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/thememanager/ThemeManager$ThemeAdapter;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mediatek/thememanager/ThemeData;->getThemePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getThemePreview(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 349
    .local v2, "previewImage":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/mediatek/thememanager/ThemeManager$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
