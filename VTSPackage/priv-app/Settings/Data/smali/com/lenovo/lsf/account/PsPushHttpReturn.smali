.class Lcom/lenovo/lsf/account/PsPushHttpReturn;
.super Ljava/lang/Object;
.source "PsPushHttpReturn.java"


# instance fields
.field public body:Ljava/lang/String;

.field public code:I

.field public reader:Ljava/io/Reader;

.field public stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 19
    iput-object v1, p0, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    .line 21
    iput-object v1, p0, Lcom/lenovo/lsf/account/PsPushHttpReturn;->stream:Ljava/io/InputStream;

    .line 22
    return-void
.end method
