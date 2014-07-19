.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$1;
.super Ljava/lang/Object;
.source "CalllogSDcardRetoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;->traverseExistCalllog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;II)Z
    .locals 3
    .param p1, "calllog"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;

    const/high16 v1, 0x3f800000

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;->notifyStepProgress(F)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDCardTask;->uid2id:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->uid()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
