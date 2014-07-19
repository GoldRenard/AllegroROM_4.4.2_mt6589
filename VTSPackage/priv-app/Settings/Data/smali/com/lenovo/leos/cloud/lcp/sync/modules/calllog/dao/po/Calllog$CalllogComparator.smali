.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog$CalllogComparator;
.super Ljava/lang/Object;
.source "Calllog.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalllogComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x468a1f7ea440c365L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)I
    .locals 4
    .param p1, "lhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .param p2, "rhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    .prologue
    const/4 v2, 0x0

    .line 47
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    :cond_2
    if-nez p2, :cond_3

    .line 54
    const/4 v2, -0x1

    goto :goto_0

    .line 56
    :cond_3
    if-nez p1, :cond_4

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    :cond_4
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v1, ""

    .line 61
    .local v1, "t":Ljava/lang/String;
    :goto_1
    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v0, ""

    .line 62
    .local v0, "o":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 60
    .end local v0    # "o":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_5
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    goto :goto_1

    .line 61
    .restart local v1    # "t":Ljava/lang/String;
    :cond_6
    iget-object v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog$CalllogComparator;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)I

    move-result v0

    return v0
.end method
