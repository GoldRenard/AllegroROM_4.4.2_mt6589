.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "BasePhotoSyncPerformer.java"


# static fields
.field protected static final BATCH_COMMIT_SIZE:I = 0x32

.field public static final ONGOING_BACKUP_UPLOAD_PHOTO:I = 0x2

.field public static final ONGOING_RESTORE_BATCH_DOWNLOAD:I = 0x3

.field public static final PHOTO_CLOUD_ADD:Ljava/lang/String; = "PHOTO_CLOUD_ADD"

.field public static final PHOTO_CLOUD_DIFF:Ljava/lang/String; = "PHOTO_CLOUD_DIFF"

.field public static final PHOTO_LOCAL_ADD:Ljava/lang/String; = "PHOTO_LOCAL_ADD"

.field public static final PHOTO_LOCAL_DIFF:Ljava/lang/String; = "PHOTO_LOCAL_DIFF"

.field protected static final PORTRAIT_BUCKET_NAME:Ljava/lang/String; = "portrait"


# instance fields
.field protected cloudAddCount:I

.field protected cloudDiffCount:I

.field protected contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field protected contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

.field protected localAddCount:I

.field protected localDiffCount:I

.field protected portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field protected portraitInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PortraitInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected sid2fieldIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "stepListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .param p4, "portraitChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->portraitInfoList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->sid2fieldIdMap:Ljava/util/Map;

    .line 44
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    .line 45
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 46
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 47
    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract doPortraitBackup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doPortraitRestore()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "PHOTO_LOCAL_ADD"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localAddCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v1, "PHOTO_LOCAL_DIFF"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localDiffCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v1, "PHOTO_CLOUD_ADD"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudAddCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v1, "PHOTO_CLOUD_DIFF"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudDiffCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    return-object v0
.end method

.method protected notifyProgress(F)V
    .locals 4
    .param p1, "current"    # F

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    float-to-int v1, p1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public notifyStepProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    const/high16 v1, 0x42480000

    .line 63
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 65
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 68
    :sswitch_1
    mul-float v0, v1, p1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 71
    :sswitch_2
    mul-float v0, v1, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 74
    :sswitch_3
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7fffffff -> :sswitch_3
    .end sparse-switch
.end method

.method protected setProgressStep(I)V
    .locals 3
    .param p1, "progressStep"    # I

    .prologue
    const/high16 v2, 0x3f800000

    .line 88
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    if-le p1, v0, :cond_0

    .line 89
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyStepProgress(F)V

    .line 90
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    .line 91
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyStepProgress(F)V

    .line 95
    :cond_0
    return-void
.end method

.method protected startTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->doPortraitBackup()V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->doPortraitRestore()V

    .line 54
    return-void
.end method
