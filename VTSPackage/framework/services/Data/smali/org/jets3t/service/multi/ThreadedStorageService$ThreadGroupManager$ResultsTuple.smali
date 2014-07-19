.class Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;
.super Ljava/lang/Object;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsTuple"
.end annotation


# instance fields
.field public completedResults:Ljava/util/List;

.field public errorResults:[Ljava/lang/Throwable;

.field final synthetic this$1:Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;Ljava/util/List;[Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "completedResults"    # Ljava/util/List;
    .param p3, "errorResults"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 1913
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->this$1:Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1910
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    .line 1911
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    .line 1914
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    .line 1915
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    .line 1916
    return-void
.end method
