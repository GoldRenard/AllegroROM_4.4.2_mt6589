.class public abstract Lcom/mediatek/calloption/SimPickerDialog;
.super Ljava/lang/Object;
.source "SimPickerDialog.java"


# static fields
.field public static final DEFAULT_SIM_NOT_SET:I = -0x5

.field private static final TAG:Ljava/lang/String; = "SimPickerDialog"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/mediatek/calloption/SimPickerAdapter;ZZ)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "simPickerAdpater"    # Lcom/mediatek/calloption/SimPickerAdapter;
    .param p4, "addInternet"    # Z
    .param p5, "only3GItem"    # Z

    .prologue
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0, p4, p5}, Lcom/mediatek/calloption/SimPickerDialog;->createItemHolder(Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/mediatek/calloption/SimPickerAdapter;->setItems(Ljava/util/List;)V

    .line 50
    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected static createItemHolder(Landroid/content/Context;ZZ)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addInternet"    # Z
    .param p2, "only3GItem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 62
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 63
    .local v4, "simInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "itemHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;>;"
    const/4 v5, 0x0

    .line 67
    .local v5, "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    new-instance v6, Lcom/mediatek/calloption/SimPickerDialog$1;

    invoke-direct {v6}, Lcom/mediatek/calloption/SimPickerDialog$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 75
    .local v3, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ltz v6, :cond_0

    .line 76
    const-string v6, "SimPickerDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[createItemHolder] for simId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", color: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v5, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v5    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-direct {v5, v3, v10}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 79
    .restart local v5    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    if-nez p2, :cond_1

    .line 80
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    iget v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v6}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySIMBySlot(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v3    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enable_internet_call_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "enabled":I
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v0, v11, :cond_3

    .line 95
    new-instance v5, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;

    .end local v5    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    const-string v6, "Internet"

    invoke-direct {v5, v6, v11}, Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;-><init>(Ljava/lang/Object;I)V

    .line 97
    .restart local v5    # "temp":Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    return-object v2
.end method


# virtual methods
.method protected abstract getSimPickerAdapter(Landroid/content/Context;Ljava/util/List;J)Lcom/mediatek/calloption/SimPickerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/calloption/SimPickerAdapter$ItemHolder;",
            ">;J)",
            "Lcom/mediatek/calloption/SimPickerAdapter;"
        }
    .end annotation
.end method
