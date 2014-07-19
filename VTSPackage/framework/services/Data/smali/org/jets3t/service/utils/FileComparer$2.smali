.class Lorg/jets3t/service/utils/FileComparer$2;
.super Ljava/lang/Thread;
.source "FileComparer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/utils/FileComparer;->listObjectsThreaded(Lorg/jets3t/service/StorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Lorg/jets3t/service/model/StorageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/utils/FileComparer;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$finalDelimiter:Ljava/lang/String;

.field final synthetic val$finalPrefixes:[Ljava/lang/String;

.field final synthetic val$threadedService:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method constructor <init>(Lorg/jets3t/service/utils/FileComparer;Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lorg/jets3t/service/utils/FileComparer$2;->this$0:Lorg/jets3t/service/utils/FileComparer;

    iput-object p2, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$threadedService:Lorg/jets3t/service/multi/ThreadedStorageService;

    iput-object p3, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$bucketName:Ljava/lang/String;

    iput-object p4, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$finalPrefixes:[Ljava/lang/String;

    iput-object p5, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$finalDelimiter:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 537
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$threadedService:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$bucketName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$finalPrefixes:[Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/utils/FileComparer$2;->val$finalDelimiter:Ljava/lang/String;

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/multi/ThreadedStorageService;->listObjects(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z

    .line 539
    return-void
.end method
