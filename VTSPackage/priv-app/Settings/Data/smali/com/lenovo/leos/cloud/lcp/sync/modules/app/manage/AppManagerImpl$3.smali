.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;
.super Ljava/lang/Object;
.source "AppManagerImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->fillExistApp2CategoryList(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;

.field private final synthetic val$categoryAppList:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;->val$categoryAppList:Ljava/util/Map;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisitBackuped(FLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # F
    .param p2, "pkname"    # Ljava/lang/String;
    .param p3, "dbt"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method

.method public onVisitPkname(FLjava/lang/String;)V
    .locals 4
    .param p1, "progress"    # F
    .param p2, "pkname"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getAppInfoFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v0

    .line 112
    .local v0, "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;)V

    .line 116
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;->val$categoryAppList:Ljava/util/Map;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 117
    .local v1, "existList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    if-nez v1, :cond_1

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "existList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .restart local v1    # "existList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;->val$categoryAppList:Ljava/util/Map;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
