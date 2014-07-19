.class public Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;
.super Ljava/lang/Object;
.source "LCPFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
    }
.end annotation


# static fields
.field private static inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;


# instance fields
.field singletonObjs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->singletonObjs:Ljava/util/Map;

    .line 15
    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public singletonAPI(Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;)Ljava/lang/Object;
    .locals 2
    .param p1, "apiName"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "nameStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->singletonObjs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;->singletonObjs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
