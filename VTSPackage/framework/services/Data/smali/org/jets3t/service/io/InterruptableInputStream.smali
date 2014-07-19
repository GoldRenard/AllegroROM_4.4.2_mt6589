.class public Lorg/jets3t/service/io/InterruptableInputStream;
.super Ljava/io/InputStream;
.source "InterruptableInputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/InputStreamWrapper;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private interrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/io/InterruptableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->interrupted:Z

    .line 47
    iput-object p1, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    .line 48
    return-void
.end method

.method private maybeInterruptInputStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-boolean v1, p0, Lorg/jets3t/service/io/InterruptableInputStream;->interrupted:Z

    if-eqz v1, :cond_2

    .line 52
    sget-object v1, Lorg/jets3t/service/io/InterruptableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lorg/jets3t/service/io/InterruptableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input stream interrupted, closing underlying input stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jets3t/service/io/InterruptableInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    :goto_0
    new-instance v1, Lorg/jets3t/service/io/UnrecoverableIOException;

    const-string v2, "Reading from input stream deliberately interrupted"

    invoke-direct {v1, v2}, Lorg/jets3t/service/io/UnrecoverableIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lorg/jets3t/service/io/InterruptableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lorg/jets3t/service/io/InterruptableInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Unable to close underlying InputStream on interrupt"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/jets3t/service/io/InterruptableInputStream;->maybeInterruptInputStream()V

    .line 84
    iget-object v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 90
    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->interrupted:Z

    .line 98
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/jets3t/service/io/InterruptableInputStream;->maybeInterruptInputStream()V

    .line 72
    iget-object v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/jets3t/service/io/InterruptableInputStream;->maybeInterruptInputStream()V

    .line 78
    iget-object v0, p0, Lorg/jets3t/service/io/InterruptableInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
