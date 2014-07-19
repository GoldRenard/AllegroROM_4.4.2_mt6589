.class final Lcom/mediatek/calloption/SimPickerDialog$1;
.super Ljava/lang/Object;
.source "SimPickerDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calloption/SimPickerDialog;->createItemHolder(Landroid/content/Context;ZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I
    .locals 2
    .param p1, "arg0"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "arg1"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 70
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget v1, p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/calloption/SimPickerDialog$1;->compare(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v0

    return v0
.end method
