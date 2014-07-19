.class public final Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;
.super Ljava/lang/Object;
.source "LSFUtil.java"


# static fields
.field public static final RID:Ljava/lang/String; = "contact.cloud.lps.lenovo.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceTicket(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getServiceTicket(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceTicket(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "userName":Ljava/lang/String;
    return-object v0
.end method
