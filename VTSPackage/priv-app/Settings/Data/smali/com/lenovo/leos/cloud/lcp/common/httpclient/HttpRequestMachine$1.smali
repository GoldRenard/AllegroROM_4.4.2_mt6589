.class Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$1;
.super Ljava/lang/Thread;
.source "HttpRequestMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->abortRequest([Lorg/apache/http/client/methods/HttpRequestBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$requests:[Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method constructor <init>([Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$1;->val$requests:[Lorg/apache/http/client/methods/HttpRequestBase;

    .line 124
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$1;->val$requests:[Lorg/apache/http/client/methods/HttpRequestBase;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 131
    return-void

    .line 126
    :cond_0
    aget-object v0, v2, v1

    .line 127
    .local v0, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
