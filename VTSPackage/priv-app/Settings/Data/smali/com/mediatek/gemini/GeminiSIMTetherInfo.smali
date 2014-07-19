.class public Lcom/mediatek/gemini/GeminiSIMTetherInfo;
.super Landroid/app/Activity;
.source "GeminiSIMTetherInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;,
        Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;
    }
.end annotation


# static fields
.field private static final DIALOG_WAITING:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "GeminiSIMTetherInfo"

.field private static sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;


# instance fields
.field private mActionBarTextView:Landroid/widget/TextView;

.field private mAdpaterData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncTask:Landroid/os/AsyncTask;

.field private mContactObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrSimId:Ljava/lang/String;

.field private mCurrentSimId:J

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mHasRecord:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private volatile mIsRefresh:Z

.field private mIsShowCheckBox:Z

.field private mListView:Landroid/widget/ListView;

.field private mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

.field private volatile mNeedRefresh:Z

.field private mNumSelected:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    .line 57
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    .line 58
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    .line 59
    iput-object p0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContext:Landroid/content/Context;

    .line 60
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    .line 65
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    .line 87
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 403
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/gemini/GeminiSIMTetherInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/gemini/GeminiSIMTetherInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreCheckState()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    return-object v0
.end method

.method static synthetic access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    .prologue
    .line 43
    sput-object p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object p0
.end method

.method private disAssContact()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    .line 202
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 203
    .local v0, "disContactAsyTask":Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    .line 204
    return-void
.end method

.method private hideInformation()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 253
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private restoreCheckState()V
    .locals 4

    .prologue
    .line 491
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 493
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method private restoreState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 512
    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 513
    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    .line 514
    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V

    .line 515
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 517
    return-void
.end method

.method private setAllCheckBoxState(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    .local v0, "count":I
    iput v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 168
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 167
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 168
    goto :goto_1

    .line 175
    :cond_2
    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V

    .line 176
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 177
    return-void
.end method

.method private showActionBar(Z)V
    .locals 9
    .param p1, "isShow"    # Z

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 284
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz p1, :cond_0

    .line 287
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 288
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040080

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, "customActionBarView":Landroid/view/View;
    const v4, 0x7f0b01e7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 292
    .local v2, "doneMenuItem":Landroid/widget/ImageButton;
    const v4, 0x7f0b01e8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    .line 294
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    const v5, 0x7f09023a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v4, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 314
    .end local v1    # "customActionBarView":Landroid/view/View;
    .end local v2    # "doneMenuItem":Landroid/widget/ImageButton;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 310
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private updateActivityTitle(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 156
    .local v1, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_0

    .line 157
    iget-object v0, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 158
    .local v0, "simDisplayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0    # "simDisplayName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateTitle(I)V
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    const v1, 0x7f09023a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_0
    return-void
.end method

.method private updateView(Z)V
    .locals 5
    .param p1, "isRecord"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 258
    const-string v0, "GeminiSIMTetherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addContacts()V
    .locals 5

    .prologue
    .line 273
    const-string v2, "GeminiSIMTetherInfo"

    const-string v3, "Begin to add contacts now"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v1

    .line 276
    .local v1, "isCanceled":Z
    const-string v2, "GeminiSIMTetherInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContacts()---isCanceled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 318
    const-string v4, "GeminiSIMTetherInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult() requestCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resultCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v4, 0x1e61

    if-ne v4, p1, :cond_2

    .line 321
    if-ne v7, p2, :cond_1

    .line 322
    const-string v4, "slotid"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 323
    .local v3, "slotId":I
    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateActivityTitle(I)V

    .line 324
    const-string v4, "simid"

    const-wide/16 v5, -0x1

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 325
    .local v1, "simId":J
    iput-wide v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    .line 326
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->setCurrSIMID(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 328
    .local v0, "mySync":Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    new-array v4, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    .line 347
    .end local v0    # "mySync":Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    .end local v1    # "simId":J
    .end local v3    # "slotId":I
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->hideInformation()V

    .line 334
    if-ne p2, v7, :cond_3

    .line 335
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 336
    .restart local v0    # "mySync":Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    new-array v4, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 338
    .end local v0    # "mySync":Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    :cond_3
    if-nez p2, :cond_4

    .line 339
    iget-boolean v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    goto :goto_0

    .line 341
    :cond_4
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 342
    invoke-direct {p0, v8}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->goBackSimSelection(Landroid/app/Activity;Z)V

    .line 532
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v5, 0x7f04005b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 112
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getInstance(Landroid/content/Context;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    .line 113
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    .line 114
    const v5, 0x7f0b016b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    .line 115
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v3

    .line 116
    .local v3, "slotId":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 118
    const v5, 0x7f090233

    invoke-static {p0, v5}, Lcom/mediatek/gemini/GeminiUtils;->startSelectSimActivity(Landroid/app/Activity;I)V

    .line 133
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->hideInformation()V

    .line 134
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 135
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void

    .line 120
    :cond_0
    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateActivityTitle(I)V

    .line 121
    invoke-static {p0, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 122
    .local v4, "tempSimInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v1, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 124
    .local v1, "simId":J
    invoke-static {p0}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 125
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v7, 0x7f090236

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-interface {v6, v7, v8}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iput-wide v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    .line 129
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->setCurrSIMID(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 131
    .local v0, "mySync":Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    check-cast v5, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 238
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 143
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 144
    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-nez v1, :cond_0

    .line 145
    const v1, 0x7f0b03af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 146
    const v1, 0x7f0b03b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 147
    const v1, 0x7f0b03b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 149
    :cond_0
    const v1, 0x7f0b03b2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isCanceled":Z
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy---isCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-eqz v3, :cond_0

    .line 472
    const v3, 0x7f0b016c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 475
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    .line 477
    .local v2, "isChecked":Z
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 478
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 480
    const/4 v1, 0x1

    .line 485
    .local v1, "checkBoxNewState":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v3, v1}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 486
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V

    .line 488
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "checkBoxNewState":I
    .end local v2    # "isChecked":Z
    :cond_0
    return-void

    .line 477
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v2    # "isChecked":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 482
    :cond_2
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 483
    const/4 v1, 0x0

    .restart local v1    # "checkBoxNewState":I
    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    .line 462
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V

    .line 463
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    .line 464
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 521
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    .line 523
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreCheckState()V

    .line 524
    const/4 v0, 0x1

    .line 526
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 181
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 183
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setAllCheckBoxState(Z)V

    goto :goto_0

    .line 186
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setAllCheckBoxState(Z)V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->disAssContact()V

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->addContacts()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f0b03af
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 209
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    return-void
.end method
