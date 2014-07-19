.class Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;
.super Ljava/lang/Object;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsTuple"
.end annotation


# instance fields
.field public completedResults:Ljava/util/List;

.field public errorResults:[Ljava/lang/Throwable;

.field final synthetic this$1:Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;Ljava/util/List;[Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "completedResults"    # Ljava/util/List;
    .param p3, "errorResults"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 2802
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->this$1:Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2799
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    .line 2800
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    .line 2803
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    .line 2804
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    .line 2805
    return-void
.end method
