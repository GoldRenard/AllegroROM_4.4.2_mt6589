.class public Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;
.super Ljava/lang/Object;
.source "InputStreamEntity.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private bytes:[B

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "is parameter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->name:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->is:Ljava/io/InputStream;

    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->readBytes(Ljava/io/InputStream;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 28
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 29
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->contentType:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private readBytes(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 34
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    :try_start_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->bytes:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-object v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->bytes:[B

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->is:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 51
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->contentLength:J

    .line 59
    :goto_0
    return-wide v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->bytes:[B

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->contentLength:J

    .line 59
    :cond_1
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->contentLength:J

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 84
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->contentType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<TT;>;"
    .local p1, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;, "TT;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    .line 80
    return-void
.end method
