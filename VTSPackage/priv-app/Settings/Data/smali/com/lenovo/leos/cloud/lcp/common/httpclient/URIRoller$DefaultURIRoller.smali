.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;
.super Ljava/lang/Object;
.source "URIRoller.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultURIRoller"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultURIRoller"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected current:I

.field protected uriArray:[Ljava/net/URI;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 9
    .param p1, "uris"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v8, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    .line 31
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    .line 38
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    array-length v5, p1

    new-array v4, v5, [Ljava/net/URI;

    .line 44
    .local v4, "tmpUriArray":[Ljava/net/URI;
    const/4 v2, 0x0

    .line 45
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, p1

    .local v3, "len":I
    :goto_1
    if-lt v1, v3, :cond_2

    .line 54
    if-lez v2, :cond_0

    .line 55
    new-array v5, v2, [Ljava/net/URI;

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    .line 56
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    invoke-static {v4, v8, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 47
    :cond_2
    :try_start_0
    new-instance v5, Ljava/net/URI;

    aget-object v6, p1, v1

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 45
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v5, "DefaultURIRoller"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "URI Format error. "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public varargs constructor <init>([Ljava/net/URI;)V
    .locals 1
    .param p1, "uriArray"    # [Ljava/net/URI;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    .line 34
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized roll(Ljava/lang/Exception;)Ljava/net/URI;
    .locals 2
    .param p1, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    monitor-exit p0

    return-object v0

    .line 65
    :cond_1
    if-eqz p1, :cond_2

    .line 66
    :try_start_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    .line 68
    :cond_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->uriArray:[Ljava/net/URI;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;->current:I

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
