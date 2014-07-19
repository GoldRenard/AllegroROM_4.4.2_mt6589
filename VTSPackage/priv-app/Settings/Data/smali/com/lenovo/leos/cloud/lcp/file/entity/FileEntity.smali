.class public Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;
.super Ljava/lang/Object;
.source "FileEntity.java"

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
.field private contentType:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 13
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File parameter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->file:Ljava/io/File;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    .local p2, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;, "TT;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;)V

    .line 27
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    .local p2, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;, "TT;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;)V

    .line 32
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    .line 33
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->contentType:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 21
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;)V

    .line 22
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->contentType:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->file:Ljava/io/File;

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
    .line 62
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-object v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 39
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexcepted FileNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public length()J
    .locals 2

    .prologue
    .line 47
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->contentType:Ljava/lang/String;

    .line 73
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
    .line 67
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<TT;>;"
    .local p1, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;, "TT;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->metaInfo:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    .line 68
    return-void
.end method
