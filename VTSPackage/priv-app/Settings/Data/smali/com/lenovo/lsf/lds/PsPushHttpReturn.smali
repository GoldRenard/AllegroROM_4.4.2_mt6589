.class Lcom/lenovo/lsf/lds/PsPushHttpReturn;
.super Ljava/lang/Object;
.source "PsServerInfo.java"


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

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->code:I

    .line 255
    iput-object v1, p0, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->reader:Ljava/io/Reader;

    .line 257
    iput-object v1, p0, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->stream:Ljava/io/InputStream;

    .line 258
    return-void
.end method
