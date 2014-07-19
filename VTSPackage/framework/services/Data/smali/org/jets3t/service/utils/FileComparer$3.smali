.class Lorg/jets3t/service/utils/FileComparer$3;
.super Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
.source "FileComparer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/utils/FileComparer;->lookupObjectMetadataForPotentialClashes(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Ljava/util/Map;ZZLorg/jets3t/service/io/BytesProgressWatcher;Lorg/jets3t/service/multi/StorageServiceEventListener;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/utils/FileComparer;

.field final synthetic val$objectsCompleteList:Ljava/util/List;

.field final synthetic val$serviceExceptions:[Lorg/jets3t/service/ServiceException;


# direct methods
.method constructor <init>(Lorg/jets3t/service/utils/FileComparer;Ljava/util/List;[Lorg/jets3t/service/ServiceException;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lorg/jets3t/service/utils/FileComparer$3;->this$0:Lorg/jets3t/service/utils/FileComparer;

    iput-object p2, p0, Lorg/jets3t/service/utils/FileComparer$3;->val$objectsCompleteList:Ljava/util/List;

    iput-object p3, p0, Lorg/jets3t/service/utils/FileComparer$3;->val$serviceExceptions:[Lorg/jets3t/service/ServiceException;

    invoke-direct {p0}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public event(Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;

    .prologue
    .line 848
    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 849
    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;->getCompletedObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    .line 850
    .local v0, "finishedObjects":[Lorg/jets3t/service/model/StorageObject;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 851
    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparer$3;->val$objectsCompleteList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 858
    .end local v0    # "finishedObjects":[Lorg/jets3t/service/model/StorageObject;
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 854
    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparer$3;->val$serviceExceptions:[Lorg/jets3t/service/ServiceException;

    const/4 v2, 0x0

    new-instance v3, Lorg/jets3t/service/ServiceException;

    const-string v4, "Failed to retrieve detailed information about all objects"

    invoke-virtual {p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    aput-object v3, v1, v2

    goto :goto_0
.end method
