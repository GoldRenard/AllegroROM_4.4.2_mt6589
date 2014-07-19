.class public Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;
.super Ljava/lang/Object;
.source "MultipleDeleteResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/model/MultipleDeleteResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorResult"
.end annotation


# instance fields
.field errorCode:Ljava/lang/String;

.field key:Ljava/lang/String;

.field message:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/model/MultipleDeleteResult;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/model/MultipleDeleteResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->this$0:Lorg/jets3t/service/model/MultipleDeleteResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->key:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->version:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->errorCode:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->message:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;->version:Ljava/lang/String;

    return-object v0
.end method
