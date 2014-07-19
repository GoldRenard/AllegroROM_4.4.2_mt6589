.class public final Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v2

    .line 13
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 14
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    const/4 v2, 0x0

    goto :goto_0

    .line 13
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
