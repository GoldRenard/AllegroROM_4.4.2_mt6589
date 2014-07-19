.class public Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;
.super Landroid/app/ListFragment;
.source "FmtLanguagePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;,
        Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->setSelect(I)V

    return-void
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 188
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    aget-object v2, p2, v1

    .line 193
    :goto_1
    return-object v2

    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setSelect(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 207
    return-void
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 252
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 256
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 258
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 260
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const v0, 0x109000f

    const v1, 0x1020014

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 84
    .local v23, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v20

    .line 85
    .local v20, "locales":[Ljava/lang/String;
    const v3, 0x7f0a0027

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 86
    .local v25, "specialLocaleCodes":[Ljava/lang/String;
    const v3, 0x7f0a0028

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 87
    .local v26, "specialLocaleNames":[Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 88
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    .line 89
    .local v21, "origSize":I
    move/from16 v0, v21

    new-array v0, v0, [Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    move-object/from16 v22, v0

    .line 90
    .local v22, "preprocess":[Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;
    const/4 v14, 0x0

    .line 91
    .local v14, "finalSize":I
    const/16 v16, 0x0

    .local v16, "i":I
    move v15, v14

    .end local v14    # "finalSize":I
    .local v15, "finalSize":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 92
    aget-object v24, v20, v16

    .line 93
    .local v24, "s":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v19

    .line 94
    .local v19, "len":I
    const/4 v3, 0x5

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    .line 95
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 96
    .local v18, "language":Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, "country":Ljava/lang/String;
    new-instance v17, Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v17, "l":Ljava/util/Locale;
    if-nez v15, :cond_0

    .line 103
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "finalSize":I
    .restart local v14    # "finalSize":I
    new-instance v3, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v22, v15

    .line 91
    .end local v12    # "country":Ljava/lang/String;
    .end local v17    # "l":Ljava/util/Locale;
    .end local v18    # "language":Ljava/lang/String;
    :goto_1
    add-int/lit8 v16, v16, 0x1

    move v15, v14

    .end local v14    # "finalSize":I
    .restart local v15    # "finalSize":I
    goto :goto_0

    .line 106
    .restart local v12    # "country":Ljava/lang/String;
    .restart local v17    # "l":Ljava/util/Locale;
    .restart local v18    # "language":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v15, -0x1

    aget-object v3, v22, v3

    iget-object v3, v3, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    add-int/lit8 v3, v15, -0x1

    aget-object v3, v22, v3

    add-int/lit8 v4, v15, -0x1

    aget-object v4, v22, v4

    iget-object v4, v4, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v4, v0, v1}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 121
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "finalSize":I
    .restart local v14    # "finalSize":I
    new-instance v3, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v22, v15

    goto :goto_1

    .line 127
    .end local v14    # "finalSize":I
    .restart local v15    # "finalSize":I
    :cond_1
    const-string v3, "zz_ZZ"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    const-string v13, "Pseudo..."

    .line 135
    .local v13, "displayName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "finalSize":I
    .restart local v14    # "finalSize":I
    new-instance v3, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    move-object/from16 v0, v17

    invoke-direct {v3, v13, v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v22, v15

    goto :goto_1

    .line 130
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v14    # "finalSize":I
    .restart local v15    # "finalSize":I
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 141
    .end local v12    # "country":Ljava/lang/String;
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v17    # "l":Ljava/util/Locale;
    .end local v18    # "language":Ljava/lang/String;
    .end local v19    # "len":I
    .end local v24    # "s":Ljava/lang/String;
    :cond_3
    new-array v8, v15, [Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    .line 142
    .local v8, "localeInfos":[Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 143
    aget-object v3, v22, v16

    aput-object v3, v8, v16

    .line 142
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 145
    :cond_4
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 147
    const-string v3, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 149
    .local v9, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v3 .. v11}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;-><init>(Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;Landroid/content/Context;II[Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v3

    .end local v8    # "localeInfos":[Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v19    # "len":I
    .restart local v24    # "s":Ljava/lang/String;
    :cond_5
    move v14, v15

    .end local v15    # "finalSize":I
    .restart local v14    # "finalSize":I
    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 201
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->adapter:Landroid/widget/ArrayAdapter;

    .line 202
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    iget-object v0, v1, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 230
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$2;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$2;-><init>(Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;Ljava/util/Locale;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 216
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 217
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleSelectionListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->mListener:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleSelectionListener;

    .line 211
    return-void
.end method
