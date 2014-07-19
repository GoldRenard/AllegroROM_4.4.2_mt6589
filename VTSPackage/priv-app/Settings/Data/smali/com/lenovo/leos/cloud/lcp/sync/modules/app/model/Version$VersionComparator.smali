.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$VersionComparator;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;)I
    .locals 4
    .param p1, "lhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    .param p2, "rhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    .prologue
    const/4 v2, 0x0

    .line 111
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    :cond_2
    if-nez p2, :cond_3

    .line 118
    const/4 v2, -0x1

    goto :goto_0

    .line 120
    :cond_3
    if-nez p1, :cond_4

    .line 121
    const/4 v2, 0x1

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->toVersionNumber(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 125
    .local v0, "v1":Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->toVersionNumber(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 126
    .local v1, "v2":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$VersionComparator;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;)I

    move-result v0

    return v0
.end method
