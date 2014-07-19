.class public Lcom/lenovo/lsf/lds/PsServerInfo;
.super Ljava/lang/Object;
.source "PsServerInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getServerAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
