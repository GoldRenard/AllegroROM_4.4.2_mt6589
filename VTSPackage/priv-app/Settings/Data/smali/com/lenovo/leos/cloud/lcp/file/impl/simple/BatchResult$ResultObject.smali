.class public Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;
.super Ljava/lang/Object;
.source "BatchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultObject"
.end annotation


# instance fields
.field private length:J

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "length"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->path:Ljava/lang/String;

    .line 38
    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->length:J

    .line 39
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->length:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->path:Ljava/lang/String;

    return-object v0
.end method
