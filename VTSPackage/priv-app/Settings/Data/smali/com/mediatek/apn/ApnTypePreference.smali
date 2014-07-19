.class public Lcom/mediatek/apn/ApnTypePreference;
.super Landroid/preference/DialogPreference;
.source "ApnTypePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApnTypePreference"


# instance fields
.field private mApnTypeArray:[Ljava/lang/String;

.field private mApnTypeNum:I

.field private mCheckState:[Z

.field mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mListView:Landroid/widget/ListView;

.field private mTypeString:Ljava/lang/String;

.field private mUiCheckState:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/apn/ApnTypePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p1}, Lcom/android/settings/Utils;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "apnType":Ljava/lang/String;
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 43
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "apn_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "tethering"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 49
    .local v2, "isTethering":Z
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    const v4, 0x7f0a0089

    invoke-interface {v3, p1, v4, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getApnTypeArray(Landroid/content/Context;IZ)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    .line 51
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v3, v3

    iput v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    .line 54
    :cond_1
    iget v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    .line 55
    return-void
.end method

.method private updateRecord()V
    .locals 6

    .prologue
    .line 107
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "strTemp":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 119
    .local v1, "length":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 120
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 124
    :goto_1
    const-string v3, "ApnTypePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTypeString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "strTemp":Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 122
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "strTemp":Ljava/lang/StringBuilder;
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateUiCheckBoxStatus()V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 80
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiCheckBoxStatus mCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public intCheckState(Ljava/lang/String;)V
    .locals 4
    .param p1, "strType"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init CheckState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-nez p1, :cond_1

    .line 143
    :cond_0
    return-void

    .line 138
    :cond_1
    iput-object p1, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aput-boolean p3, v0, p2

    .line 102
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    aput-boolean p3, v0, p2

    .line 103
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/mediatek/apn/ApnTypePreference;->updateUiCheckBoxStatus()V

    .line 91
    invoke-direct {p0}, Lcom/mediatek/apn/ApnTypePreference;->updateRecord()V

    .line 92
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 65
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mListView:Landroid/widget/ListView;

    .line 69
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 73
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder mUiCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
