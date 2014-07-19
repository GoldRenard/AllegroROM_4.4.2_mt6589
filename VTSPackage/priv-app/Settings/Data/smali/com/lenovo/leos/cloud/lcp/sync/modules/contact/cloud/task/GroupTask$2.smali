.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;
.super Ljava/lang/Object;
.source "GroupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->transferGroupRelation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;

.field private final synthetic val$ops:Ljava/util/ArrayList;

.field private final synthetic val$targetCid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->val$targetCid:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->val$ops:Ljava/util/ArrayList;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z
    .locals 2
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->val$targetCid:Ljava/lang/String;

    iput-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->val$ops:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newCreateFieldDataOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
