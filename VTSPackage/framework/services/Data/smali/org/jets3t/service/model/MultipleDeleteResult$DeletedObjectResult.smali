.class public Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;
.super Ljava/lang/Object;
.source "MultipleDeleteResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/model/MultipleDeleteResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeletedObjectResult"
.end annotation


# instance fields
.field deleteMarkerVersion:Ljava/lang/String;

.field key:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/model/MultipleDeleteResult;

.field version:Ljava/lang/String;

.field withDeleteMarker:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/model/MultipleDeleteResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "withDeleteMarker"    # Ljava/lang/Boolean;
    .param p5, "deleteMarkerVersion"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->this$0:Lorg/jets3t/service/model/MultipleDeleteResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->key:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->version:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->withDeleteMarker:Ljava/lang/Boolean;

    .line 88
    iput-object p5, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->deleteMarkerVersion:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public getDeleteMarkerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->deleteMarkerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWithDeleteMarker()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;->withDeleteMarker:Ljava/lang/Boolean;

    return-object v0
.end method
