.class public final Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;
.super Ljava/lang/Object;
.source "ObjectUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 19
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4
    .param p0, "arr1"    # [Ljava/lang/Object;
    .param p1, "arr2"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 36
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 41
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/ObjectUtil;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    const/4 v1, 0x0

    goto :goto_0

    .line 40
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
