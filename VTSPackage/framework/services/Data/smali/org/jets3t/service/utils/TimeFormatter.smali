.class public Lorg/jets3t/service/utils/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# instance fields
.field private hourSuffix:Ljava/lang/String;

.field private hoursSuffix:Ljava/lang/String;

.field private minuteSuffix:Ljava/lang/String;

.field private minutesSuffix:Ljava/lang/String;

.field private secondSuffix:Ljava/lang/String;

.field private secondsSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 36
    const-string v1, " hour"

    const-string v2, " hours"

    const-string v3, " minute"

    const-string v4, " minutes"

    const-string v5, " second"

    const-string v6, " seconds"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jets3t/service/utils/TimeFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hourSuffix"    # Ljava/lang/String;
    .param p2, "hoursSuffix"    # Ljava/lang/String;
    .param p3, "minuteSuffix"    # Ljava/lang/String;
    .param p4, "minutesSuffix"    # Ljava/lang/String;
    .param p5, "secondSuffix"    # Ljava/lang/String;
    .param p6, "secondsSuffix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lorg/jets3t/service/utils/TimeFormatter;->hourSuffix:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lorg/jets3t/service/utils/TimeFormatter;->minuteSuffix:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/jets3t/service/utils/TimeFormatter;->secondSuffix:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/jets3t/service/utils/TimeFormatter;->secondsSuffix:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/jets3t/service/utils/TimeFormatter;->hourSuffix:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minuteSuffix:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lorg/jets3t/service/utils/TimeFormatter;->secondSuffix:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lorg/jets3t/service/utils/TimeFormatter;->secondsSuffix:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public formatTime(J)Ljava/lang/String;
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jets3t/service/utils/TimeFormatter;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatTime(JZ)Ljava/lang/String;
    .locals 7
    .param p1, "seconds"    # J
    .param p3, "useUnicodeChars"    # Z

    .prologue
    const-wide/16 v4, 0xe10

    const/4 v6, 0x1

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "hours":I
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 79
    long-to-int v2, p1

    div-int/lit16 v0, v2, 0xe10

    .line 80
    int-to-long v2, v0

    mul-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 83
    :cond_0
    long-to-int v2, p1

    div-int/lit8 v1, v2, 0x3c

    .line 84
    .local v1, "mins":I
    int-to-long v2, v1

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 86
    if-lez v0, :cond_9

    .line 87
    const/16 v2, 0x2d

    if-le v1, v2, :cond_1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->hourSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    :goto_0
    return-object v2

    .line 89
    :cond_1
    const/16 v2, 0x1e

    if-le v1, v2, :cond_3

    .line 90
    if-eqz p3, :cond_2

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00be"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 3/4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 95
    :cond_3
    const/16 v2, 0xf

    if-le v1, v2, :cond_5

    .line 96
    if-eqz p3, :cond_4

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00bd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 1/2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_5
    if-lez v1, :cond_7

    .line 102
    if-eqz p3, :cond_6

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00bc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 105
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 1/4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->hoursSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 108
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hour"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le v0, v6, :cond_8

    const-string v2, "s"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const-string v2, ""

    goto :goto_1

    .line 110
    :cond_9
    if-lez v1, :cond_12

    .line 111
    const-wide/16 v2, 0x2d

    cmp-long v2, p1, v2

    if-lez v2, :cond_a

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 113
    :cond_a
    const-wide/16 v2, 0x1e

    cmp-long v2, p1, v2

    if-lez v2, :cond_c

    .line 114
    if-eqz p3, :cond_b

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00be"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 117
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 3/4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 119
    :cond_c
    const-wide/16 v2, 0xf

    cmp-long v2, p1, v2

    if-lez v2, :cond_e

    .line 120
    if-eqz p3, :cond_d

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00bd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 123
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 1/2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 125
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_10

    .line 126
    if-eqz p3, :cond_f

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00bc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 129
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 1/4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 132
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le v1, v6, :cond_11

    iget-object v2, p0, Lorg/jets3t/service/utils/TimeFormatter;->minutesSuffix:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lorg/jets3t/service/utils/TimeFormatter;->minuteSuffix:Ljava/lang/String;

    goto :goto_2

    .line 135
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x1

    cmp-long v2, p1, v4

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/jets3t/service/utils/TimeFormatter;->secondsSuffix:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lorg/jets3t/service/utils/TimeFormatter;->secondSuffix:Ljava/lang/String;

    goto :goto_3
.end method
