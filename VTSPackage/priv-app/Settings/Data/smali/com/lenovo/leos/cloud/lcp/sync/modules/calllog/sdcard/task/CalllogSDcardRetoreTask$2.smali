.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$2;
.super Ljava/lang/Object;
.source "CalllogSDcardRetoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;->doRestoreCalllog()V
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
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "entryContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;->doRestoreCalllog(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;Ljava/lang/String;)V

    .line 127
    return-void
.end method
