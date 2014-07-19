.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;
.super Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateActionLenovo"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1059
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 1050
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->ITEM_IDS:[I

    .line 1060
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->mHandler:Landroid/os/Handler;

    .line 1061
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 1062
    return-void

    .line 1050
    :array_0
    .array-data 4
        0x30c0001
        0x30c0002
        0x30c0003
        0x30c0004
    .end array-data
.end method

.method private isCurrentModeUseDefine(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1091
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->ITEM_IDS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->ITEM_IDS:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1093
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    const/4 v2, 0x0

    .line 1097
    .end local v1    # "itemView":Landroid/view/View;
    :goto_1
    return v2

    .line 1091
    .restart local v1    # "itemView":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    .end local v1    # "itemView":Landroid/view/View;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1066
    const v4, 0x3040006

    const/4 v5, 0x0

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1067
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->ITEM_IDS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 1069
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1070
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1071
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    .end local v1    # "itemView":Landroid/view/View;
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->isCurrentModeUseDefine(Landroid/view/View;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1076
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active profile key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const v4, 0x30c0003

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1080
    :cond_1
    return-object v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateActionLenovo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1087
    return-void
.end method
