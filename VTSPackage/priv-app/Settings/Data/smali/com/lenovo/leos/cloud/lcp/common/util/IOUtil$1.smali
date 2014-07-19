.class Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$1;
.super Ljava/lang/Object;
.source "IOUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->asynchronousClose([Ljava/io/Closeable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$closeables:[Ljava/io/Closeable;


# direct methods
.method constructor <init>([Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$1;->val$closeables:[Ljava/io/Closeable;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$1;->val$closeables:[Ljava/io/Closeable;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 51
    return-void
.end method
