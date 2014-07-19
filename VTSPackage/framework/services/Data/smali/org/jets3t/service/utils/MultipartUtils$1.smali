.class Lorg/jets3t/service/utils/MultipartUtils$1;
.super Lorg/jets3t/service/multi/s3/S3ServiceEventAdaptor;
.source "MultipartUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/utils/MultipartUtils;->uploadObjects(Ljava/lang/String;Lorg/jets3t/service/S3Service;Ljava/util/List;Lorg/jets3t/service/multi/s3/S3ServiceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/utils/MultipartUtils;

.field final synthetic val$multipartUploadList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jets3t/service/utils/MultipartUtils;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/jets3t/service/utils/MultipartUtils$1;->this$0:Lorg/jets3t/service/utils/MultipartUtils;

    iput-object p2, p0, Lorg/jets3t/service/utils/MultipartUtils$1;->val$multipartUploadList:Ljava/util/List;

    invoke-direct {p0}, Lorg/jets3t/service/multi/s3/S3ServiceEventAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public event(Lorg/jets3t/service/multi/s3/MultipartStartsEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    .prologue
    .line 224
    const/4 v4, 0x3

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 225
    invoke-virtual {p1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->getStartedUploads()[Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v0

    .local v0, "arr$":[Lorg/jets3t/service/model/MultipartUpload;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 226
    .local v3, "upload":Lorg/jets3t/service/model/MultipartUpload;
    iget-object v4, p0, Lorg/jets3t/service/utils/MultipartUtils$1;->val$multipartUploadList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "arr$":[Lorg/jets3t/service/model/MultipartUpload;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "upload":Lorg/jets3t/service/model/MultipartUpload;
    :cond_0
    return-void
.end method
