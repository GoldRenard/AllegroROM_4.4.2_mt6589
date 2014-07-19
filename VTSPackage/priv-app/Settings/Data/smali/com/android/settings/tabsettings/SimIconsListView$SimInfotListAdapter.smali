.class Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimIconsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/SimIconsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimInfotListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/tabsettings/SimIconsListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/tabsettings/SimIconsListView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    # getter for: Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/tabsettings/SimIconsListView;->access$100(Lcom/android/settings/tabsettings/SimIconsListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    # getter for: Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/tabsettings/SimIconsListView;->access$100(Lcom/android/settings/tabsettings/SimIconsListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->getItem(I)Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 285
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, -0x777778

    const/high16 v9, -0x1000000

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 125
    if-nez p2, :cond_2

    .line 126
    iget-object v3, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040104

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 127
    new-instance v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;-><init>(Lcom/android/settings/tabsettings/SimIconsListView$1;)V

    .line 128
    .local v0, "simInfoViewHolder":Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;
    const v3, 0x7f0b037f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->mSimBg:Landroid/widget/RelativeLayout;

    .line 129
    const v3, 0x7f0b0380

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simType:Landroid/widget/TextView;

    .line 130
    const v3, 0x7f0b029b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simShortNumber:Landroid/widget/TextView;

    .line 131
    const v3, 0x7f0b029a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simStatus:Landroid/widget/ImageView;

    .line 132
    const v3, 0x7f0b0381

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simOpName:Landroid/widget/TextView;

    .line 133
    const v3, 0x7f0b029e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    .line 134
    const v3, 0x7f0b0382

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simSelectedRadio:Landroid/widget/RadioButton;

    .line 136
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    # getter for: Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/tabsettings/SimIconsListView;->access$100(Lcom/android/settings/tabsettings/SimIconsListView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    .line 178
    .local v1, "simItem":Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
    iget-boolean v3, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    if-nez v3, :cond_4

    .line 179
    iget v3, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    if-ne v3, v5, :cond_3

    .line 180
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->mSimBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->mSimBg:Landroid/widget/RelativeLayout;

    const v7, 0x20200d9

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 185
    :goto_1
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simOpName:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->mSimBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simType:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :goto_2
    iget-object v5, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simSelectedRadio:Landroid/widget/RadioButton;

    iget-wide v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    iget-object v3, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    # getter for: Lcom/android/settings/tabsettings/SimIconsListView;->mSelectedSimId:J
    invoke-static {v3}, Lcom/android/settings/tabsettings/SimIconsListView;->access$300(Lcom/android/settings/tabsettings/SimIconsListView;)J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_9

    move v3, v6

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 250
    const-string v3, "SimIconsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVIew called, simItem\'s simId is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mSelectedSimId is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    # getter for: Lcom/android/settings/tabsettings/SimIconsListView;->mSelectedSimId:J
    invoke-static {v7}, Lcom/android/settings/tabsettings/SimIconsListView;->access$300(Lcom/android/settings/tabsettings/SimIconsListView;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v3, "SimIconsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVIew called, simItem\'s simColor is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v3, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    if-eqz v3, :cond_1

    .line 255
    const/4 v2, 0x5

    .line 256
    .local v2, "simState":I
    if-eq v2, v6, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 257
    :cond_0
    const-string v3, "SimIconsListView"

    const-string v5, "simItem is radio off"

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simOpName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simSelectedRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    .end local v2    # "simState":I
    :cond_1
    :goto_4
    return-object p2

    .line 138
    .end local v0    # "simInfoViewHolder":Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;
    .end local v1    # "simItem":Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;

    .restart local v0    # "simInfoViewHolder":Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;
    goto/16 :goto_0

    .line 183
    .restart local v1    # "simItem":Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
    :cond_3
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->mSimBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 190
    :cond_4
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->mSimBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->mSimBg:Landroid/widget/RelativeLayout;

    iget v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    const-string v3, "SimIconsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simItem.mName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simOpName:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget v3, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mState:I

    if-ne v3, v6, :cond_5

    .line 195
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simOpName:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    :goto_5
    iget-object v3, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 202
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget v3, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mState:I

    if-ne v3, v6, :cond_6

    .line 205
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    :goto_6
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simStatus:Landroid/widget/ImageView;

    iget v7, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mState:I

    invoke-static {v7}, Lcom/android/settings/tabsettings/SIMHelper;->getSIMStateIcon(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simShortNumber:Landroid/widget/TextView;

    # invokes: Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->getFormatedNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->access$200(Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simShortNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v7, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simType:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/tabsettings/SIMHelper;->get3GSlot()I

    move-result v3

    iget v8, v1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSlot:I

    if-ne v3, v8, :cond_8

    move v3, v4

    :goto_7
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simType:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 198
    :cond_5
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simOpName:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 208
    :cond_6
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 212
    :cond_7
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_8
    move v3, v5

    .line 241
    goto :goto_7

    :cond_9
    move v3, v4

    .line 248
    goto/16 :goto_3

    .line 263
    .restart local v2    # "simState":I
    :cond_a
    const-string v3, "SimIconsListView"

    const-string v4, "simItem is not radio off"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simOpName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 265
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 266
    iget-object v3, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;->simSelectedRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 267
    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_4
.end method
