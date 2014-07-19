.class Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimSelectDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimDialogAdapter"
.end annotation


# static fields
.field private static final NUM_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimCardAdapter"

.field private static final TYPE_NORMAL_ITEM:I = 0x1

.field private static final TYPE_SIM_ITEM:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field final synthetic this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mContext:Landroid/content/Context;

    .line 250
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 251
    return-void
.end method

.method private hideViewForNoSimItem(Lcom/mediatek/gemini/simui/SimInfoViewUtil;)V
    .locals 2
    .param p1, "view"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    .prologue
    const/16 v1, 0x8

    .line 337
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p1, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 262
    .local v1, "simCount":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 263
    .local v0, "normalCount":I
    :goto_1
    add-int v2, v1, v0

    return v2

    .end local v0    # "normalCount":I
    .end local v1    # "simCount":I
    :cond_0
    move v1, v2

    .line 261
    goto :goto_0

    .restart local v1    # "simCount":I
    :cond_1
    move v0, v2

    .line 262
    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "object":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 270
    .local v1, "size":I
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 271
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$000(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    sub-int v2, p1, v1

    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 274
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mNormalItem:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$100(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v2

    sub-int v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 282
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 288
    if-nez p2, :cond_4

    .line 289
    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400d0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 292
    const v5, 0x7f0b029c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 293
    .local v0, "layout":Landroid/widget/LinearLayout;
    iget v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingStart:I

    iget v8, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingEnd:I

    invoke-virtual {v0, v5, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 294
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    new-instance v4, Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    invoke-direct {v4}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;-><init>()V

    .line 296
    .local v4, "simInfoView":Lcom/mediatek/gemini/simui/SimInfoViewUtil;
    invoke-virtual {v4, p2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->initViewId(Landroid/view/View;)V

    .line 297
    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    invoke-static {v8}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$200(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setCustomWidget(Landroid/content/Context;Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    .line 298
    iget-object v5, v4, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    if-eqz v5, :cond_0

    .line 299
    iget-object v5, v4, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 301
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {v4, p2, v6}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->enableView(Landroid/view/View;Z)V

    .line 307
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 308
    .local v2, "object":Ljava/lang/Object;
    instance-of v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v5, :cond_5

    move-object v3, v2

    .line 309
    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 310
    .local v3, "simInfoItem":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-virtual {v4, v3}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 311
    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$300(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimIndicatorIcon(I)V

    .line 312
    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mSimIndicators:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$300(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mItemStatus:Ljava/util/List;
    invoke-static {v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$400(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 314
    :cond_1
    invoke-virtual {v4, p2, v7}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->enableView(Landroid/view/View;Z)V

    .line 329
    .end local v3    # "simInfoItem":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    :goto_1
    iget-object v5, v4, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    if-eqz v5, :cond_3

    .line 330
    iget-object v8, v4, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mIndex:I
    invoke-static {v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$600(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)I

    move-result v5

    if-ne p1, v5, :cond_7

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 332
    :cond_3
    return-object p2

    .line 303
    .end local v2    # "object":Ljava/lang/Object;
    .end local v4    # "simInfoView":Lcom/mediatek/gemini/simui/SimInfoViewUtil;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    .restart local v4    # "simInfoView":Lcom/mediatek/gemini/simui/SimInfoViewUtil;
    goto :goto_0

    .line 316
    .restart local v2    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v1, v2

    .line 317
    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, "normalItem":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->hideViewForNoSimItem(Lcom/mediatek/gemini/simui/SimInfoViewUtil;)V

    .line 319
    invoke-virtual {v4, v1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimName(Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mContext:Landroid/content/Context;

    const/high16 v8, 0x7f090000

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 322
    sget v5, Lcom/mediatek/gemini/simui/CommonUtils;->INTERNET_COLOR_ID:I

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimBackgroundColor(I)V

    .line 324
    :cond_6
    iget-object v5, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->this$0:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    # getter for: Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->mEnableNormalItem:Z
    invoke-static {v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->access$500(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 325
    invoke-virtual {v4, p2, v7}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->enableView(Landroid/view/View;Z)V

    goto :goto_1

    .end local v1    # "normalItem":Ljava/lang/String;
    :cond_7
    move v5, v7

    .line 330
    goto :goto_2
.end method

.method public setPadding(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingStart:I

    .line 255
    iput p2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingEnd:I

    .line 256
    const-string v0, "SimCardAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPadding mPaddingStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPaddingEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference$SimDialogAdapter;->mPaddingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method
