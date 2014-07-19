.class public Lorg/jets3t/service/model/MultipartPart$PartNumberComparator;
.super Ljava/lang/Object;
.source "MultipartPart.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/model/MultipartPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartNumberComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/jets3t/service/model/MultipartPart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lorg/jets3t/service/model/MultipartPart;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/jets3t/service/model/MultipartPart;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/model/MultipartPart$PartNumberComparator;->compare(Lorg/jets3t/service/model/MultipartPart;Lorg/jets3t/service/model/MultipartPart;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/jets3t/service/model/MultipartPart;Lorg/jets3t/service/model/MultipartPart;)I
    .locals 2
    .param p1, "o1"    # Lorg/jets3t/service/model/MultipartPart;
    .param p2, "o2"    # Lorg/jets3t/service/model/MultipartPart;

    .prologue
    .line 111
    if-ne p1, p2, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 114
    :cond_0
    if-nez p1, :cond_1

    .line 115
    const/4 v0, -0x1

    goto :goto_0

    .line 117
    :cond_1
    if-nez p2, :cond_2

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p1}, Lorg/jets3t/service/model/MultipartPart;->getPartNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jets3t/service/model/MultipartPart;->getPartNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method
