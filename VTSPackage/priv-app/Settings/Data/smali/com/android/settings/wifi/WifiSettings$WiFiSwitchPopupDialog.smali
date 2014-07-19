.class public Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;
.super Landroid/app/AlertDialog;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiSwitchPopupDialog"
.end annotation


# static fields
.field private static final EXTRA_WIFI_SWITCH_STATE:Ljava/lang/String; = "wifi_switch_state"

.field private static final TAG:Ljava/lang/String; = "WiFiSwitchPopupDialog"

.field private static final WIFI_SWITCH_SETTING:Ljava/lang/String; = "wifi_switch_setting"

.field private static final WIFI_SWITCH_SHOW_ENABLE_DIALOG:Ljava/lang/String; = "wifi_switch_show_enable_dialog"

.field private static final WIFI_SWITCH_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckedItem:I

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->this$0:Lcom/android/settings/wifi/WifiSettings;

    .line 296
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 297
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Lcom/android/settings/wifi/WifiSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiSettings;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/settings/wifi/WifiSettings$1;

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;
    .param p1, "x1"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    return p1
.end method

.method private onLayout()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 327
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    const v9, 0x7f09015b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v10, 0x101005d

    invoke-virtual {v8, v13, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 331
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const/16 v9, 0xb

    const v10, 0x109009a

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mListView:Landroid/widget/ListView;

    .line 333
    const/4 v1, 0x1

    .line 335
    .local v1, "def_wifi_switch_setting":I
    const-string v8, "ro.operator.optr"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "optr":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, "OP01"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    sget-boolean v8, Lcom/android/settings/wifi/WifiSettings;->ROW_PRODUCT:Z

    if-eqz v8, :cond_2

    .line 338
    :cond_1
    const/4 v1, 0x0

    .line 341
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_switch_setting"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 343
    .local v2, "flag0":I
    if-ne v2, v12, :cond_3

    .line 345
    iput v11, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    .line 352
    :goto_0
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 353
    .local v4, "items":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v9, 0x7f090bf9

    invoke-virtual {v8, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 354
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v9, 0x7f090bfa

    invoke-virtual {v8, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v12

    .line 356
    new-instance v8, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    const/16 v10, 0xd

    const v11, 0x1090012

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const v11, 0x1020014

    invoke-direct {v8, v9, v10, v11, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mAdapter:Landroid/widget/ListAdapter;

    .line 360
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v12}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 362
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mListView:Landroid/widget/ListView;

    new-instance v9, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog$1;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog$1;-><init>(Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 382
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040100

    invoke-virtual {v8, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mView:Landroid/view/View;

    .line 384
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 385
    .local v7, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010387

    invoke-virtual {v8, v9, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 386
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v3, v8

    .line 387
    .local v3, "height":I
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v3, v8, 0x3

    .line 389
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mView:Landroid/view/View;

    const v9, 0x7f0b0373

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 390
    .local v5, "layout":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mListView:Landroid/widget/ListView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000

    invoke-direct {v9, v10, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 394
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    const v9, 0x104000a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, p0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 396
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mListView:Landroid/widget/ListView;

    iget v9, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    invoke-virtual {v8, v9, v12}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 397
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mListView:Landroid/widget/ListView;

    iget v9, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 399
    return-void

    .line 349
    .end local v3    # "height":I
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v5    # "layout":Landroid/widget/LinearLayout;
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_3
    iput v12, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v6, 0x1

    .line 404
    const-string v3, "WiFiSwitchPopupDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick, arg1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 408
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 410
    const-string v3, "WiFiSwitchPopupDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick, Positive Button Clicked, CheckedItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x1

    .local v1, "new_state":I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_switch_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 414
    .local v2, "old_state":I
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    if-nez v3, :cond_2

    .line 416
    const/4 v1, 0x1

    .line 418
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_switch_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lenovo.wifiswitch.ACTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "wifi_switch_state"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "new_state":I
    .end local v2    # "old_state":I
    :cond_1
    :goto_1
    return-void

    .line 420
    .restart local v1    # "new_state":I
    .restart local v2    # "old_state":I
    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I

    if-ne v3, v6, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 424
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_switch_setting"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 434
    .end local v1    # "new_state":I
    .end local v2    # "old_state":I
    :cond_3
    const/4 v3, -0x2

    if-ne p2, v3, :cond_1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    const-string v0, "WiFiSwitchPopupDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->onLayout()V

    .line 306
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 313
    const-string v0, "WiFiSwitchPopupDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 317
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_switch_show_tip_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    return-void
.end method
