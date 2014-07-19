.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;
.super Ljava/lang/Object;
.source "ContactPhotoBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->doAddPortraitOperations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field photoCount:I

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->photoCount:I

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z
    .locals 8
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v5

    iget v6, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-interface {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryRawContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v2

    .line 80
    .local v2, "rawcontact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    .line 82
    .local v3, "sid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 83
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 84
    .local v0, "b":[B
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    iget v6, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->addPhotoMimeItem2Task(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v5, v3, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->photoCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->photoCount:I

    .line 87
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    iget v6, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->syncedNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->syncedNumber:I

    .line 88
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->photoCount:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->photoCount:I

    rem-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_0

    .line 90
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->getNetTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "b":[B
    :cond_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    const v6, 0x3e99999a

    add-int/lit8 v7, p2, 0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v7, p3

    div-float/2addr v6, v7

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->notifyProgress(F)V
    invoke-static {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;F)V

    .line 100
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return v4

    .line 91
    .restart local v0    # "b":[B
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "b":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
