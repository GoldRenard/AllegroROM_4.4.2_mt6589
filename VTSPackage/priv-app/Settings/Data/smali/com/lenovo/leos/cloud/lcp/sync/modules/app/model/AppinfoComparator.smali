.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppinfoComparator;
.super Ljava/lang/Object;
.source "AppinfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;)I
    .locals 2
    .param p1, "appInfoLeft"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;
    .param p2, "appInfoRight"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isProgressing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isProgressing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isProgressing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    const/4 v0, -0x1

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isProgressing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppinfoComparator;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;)I

    move-result v0

    return v0
.end method
