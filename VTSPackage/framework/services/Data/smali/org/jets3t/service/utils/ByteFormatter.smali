.class public Lorg/jets3t/service/utils/ByteFormatter;
.super Ljava/lang/Object;
.source "ByteFormatter.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private byteSuffix:Ljava/lang/String;

.field private gigabyteSuffix:Ljava/lang/String;

.field private kilobyteSuffix:Ljava/lang/String;

.field private megabyteSuffix:Ljava/lang/String;

.field private nf:Ljavax/swing/text/NumberFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/jets3t/service/utils/ByteFormatter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/ByteFormatter;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 56
    const-string v1, " GB"

    const-string v2, " MB"

    const-string v3, " KB"

    const-string v4, " B"

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jets3t/service/utils/ByteFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "gigabyteSuffix"    # Ljava/lang/String;
    .param p2, "megabyteSuffix"    # Ljava/lang/String;
    .param p3, "kilobyteSuffix"    # Ljava/lang/String;
    .param p4, "byteSuffix"    # Ljava/lang/String;
    .param p5, "decimalPlaces"    # I

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Lorg/jets3t/service/utils/ByteFormatter;->gigabyteSuffix:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lorg/jets3t/service/utils/ByteFormatter;->megabyteSuffix:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lorg/jets3t/service/utils/ByteFormatter;->kilobyteSuffix:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lorg/jets3t/service/utils/ByteFormatter;->byteSuffix:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lorg/jets3t/service/utils/ByteFormatter;->nf:Ljavax/swing/text/NumberFormatter;

    .line 77
    iput-object p1, p0, Lorg/jets3t/service/utils/ByteFormatter;->gigabyteSuffix:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/jets3t/service/utils/ByteFormatter;->megabyteSuffix:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lorg/jets3t/service/utils/ByteFormatter;->kilobyteSuffix:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lorg/jets3t/service/utils/ByteFormatter;->byteSuffix:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v1, "numberFormatString":Ljava/lang/StringBuilder;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez p5, :cond_0

    const-string v2, "."

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p5, :cond_1

    .line 85
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 87
    .restart local v0    # "i":I
    :cond_1
    new-instance v2, Ljavax/swing/text/NumberFormatter;

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljavax/swing/text/NumberFormatter;-><init>(Ljava/text/NumberFormat;)V

    iput-object v2, p0, Lorg/jets3t/service/utils/ByteFormatter;->nf:Ljavax/swing/text/NumberFormatter;

    .line 88
    return-void
.end method


# virtual methods
.method public formatByteSize(J)Ljava/lang/String;
    .locals 11
    .param p1, "byteSize"    # J

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "result":Ljava/lang/String;
    long-to-double v2, p1

    const-wide/high16 v4, 0x4090000000000000L

    const-wide/high16 v6, 0x4008000000000000L

    :try_start_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->nf:Ljavax/swing/text/NumberFormatter;

    new-instance v4, Ljava/lang/Double;

    long-to-double v5, p1

    const-wide/high16 v7, 0x4090000000000000L

    const-wide/high16 v9, 0x4008000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v4}, Ljavax/swing/text/NumberFormatter;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->gigabyteSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v2, v1

    .line 121
    :goto_1
    return-object v2

    .line 105
    :cond_1
    long-to-double v2, p1

    const-wide/high16 v4, 0x4090000000000000L

    const-wide/high16 v6, 0x4000000000000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->nf:Ljavax/swing/text/NumberFormatter;

    new-instance v4, Ljava/lang/Double;

    long-to-double v5, p1

    const-wide/high16 v7, 0x4090000000000000L

    const-wide/high16 v9, 0x4000000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v4}, Ljavax/swing/text/NumberFormatter;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->megabyteSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_2
    const-wide/16 v2, 0x400

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->nf:Ljavax/swing/text/NumberFormatter;

    new-instance v4, Ljava/lang/Double;

    long-to-double v5, p1

    const-wide/high16 v7, 0x4090000000000000L

    const-wide/high16 v9, 0x3ff0000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v4}, Ljavax/swing/text/NumberFormatter;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->kilobyteSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->byteSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/text/ParseException;
    sget-object v2, Lorg/jets3t/service/utils/ByteFormatter;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    sget-object v2, Lorg/jets3t/service/utils/ByteFormatter;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to format byte size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/ByteFormatter;->byteSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
