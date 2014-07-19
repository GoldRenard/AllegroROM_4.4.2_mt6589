.class public Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;
.super Ljava/lang/Object;
.source "FileComparer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/FileComparer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PartialObjectListing"
.end annotation


# instance fields
.field private objectsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;"
        }
    .end annotation
.end field

.field private priorLastKey:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/utils/FileComparer;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/utils/FileComparer;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p3, "priorLastKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objectsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    const/4 v0, 0x0

    .line 1317
    iput-object p1, p0, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;->this$0:Lorg/jets3t/service/utils/FileComparer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    iput-object v0, p0, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;->objectsMap:Ljava/util/Map;

    .line 1315
    iput-object v0, p0, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;->priorLastKey:Ljava/lang/String;

    .line 1318
    iput-object p2, p0, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;->objectsMap:Ljava/util/Map;

    .line 1319
    iput-object p3, p0, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;->priorLastKey:Ljava/lang/String;

    .line 1320
    return-void
.end method


# virtual methods
.method public getObjectsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1323
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;->objectsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPriorLastKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparer$PartialObjectListing;->priorLastKey:Ljava/lang/String;

    return-object v0
.end method
