.class public Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
.super Lorg/jets3t/service/io/RepeatableFileInputStream;
.source "SegmentedRepeatableFileInputStream.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected offset:J

.field protected segmentLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "offset"    # J
    .param p4, "segmentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lorg/jets3t/service/io/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    iput-wide v0, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->offset:J

    .line 37
    iput-wide v0, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    .line 49
    iput-wide p2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->offset:J

    .line 50
    iput-wide p4, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    .line 52
    const-wide/16 v0, 0x1

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Segment length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be greater than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->offset:J

    iget-wide v4, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plus segment length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "exceed length of file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-direct {p0}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->skipToOffset()V

    .line 65
    return-void
.end method

.method private getRelativeMarkPoint()J
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->markPoint:J

    iget-wide v2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->offset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private skipToOffset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    .line 69
    .local v0, "skipped":J
    iget-wide v2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->offset:J

    .line 70
    .local v2, "toSkip":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 71
    invoke-virtual {p0, v2, v3}, Lorg/jets3t/service/io/RepeatableFileInputStream;->skip(J)J

    move-result-wide v0

    .line 72
    sub-long/2addr v2, v0

    goto :goto_0

    .line 76
    :cond_0
    const/4 v4, 0x0

    invoke-super {p0, v4}, Lorg/jets3t/service/io/RepeatableFileInputStream;->mark(I)V

    .line 78
    sget-object v4, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    sget-object v4, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped to segment offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->offset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-wide v2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    iget-wide v4, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    invoke-direct {p0}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->getRelativeMarkPoint()J

    move-result-wide v6

    add-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 88
    .local v0, "reallyAvailable":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 89
    const v2, 0x7fffffff

    .line 91
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    invoke-direct {p0}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->getRelativeMarkPoint()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 98
    const/4 v0, -0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/jets3t/service/io/RepeatableFileInputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 108
    iget-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    invoke-direct {p0}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->getRelativeMarkPoint()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 109
    const/4 v0, -0x1

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    iget-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    invoke-direct {p0}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->getRelativeMarkPoint()J

    move-result-wide v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 112
    iget-wide v0, p0, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->segmentLength:J

    iget-wide v2, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    invoke-direct {p0}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->getRelativeMarkPoint()J

    move-result-wide v4

    add-long/2addr v2, v4

    int-to-long v4, p2

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 114
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/jets3t/service/io/RepeatableFileInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method
