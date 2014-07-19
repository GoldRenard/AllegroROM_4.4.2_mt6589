.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$SmsComparator;
.super Ljava/lang/Object;
.source "Sms.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)I
    .locals 3
    .param p1, "lhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .param p2, "rhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    const/4 v2, -0x1

    .line 148
    :goto_0
    return v2

    .line 138
    :cond_0
    if-nez p1, :cond_1

    .line 139
    const/4 v2, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    :cond_2
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v1, ""

    .line 147
    .local v1, "t":Ljava/lang/String;
    :goto_1
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, ""

    .line 148
    .local v0, "o":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 146
    .end local v0    # "o":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_3
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 147
    .restart local v1    # "t":Ljava/lang/String;
    :cond_4
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$SmsComparator;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)I

    move-result v0

    return v0
.end method
