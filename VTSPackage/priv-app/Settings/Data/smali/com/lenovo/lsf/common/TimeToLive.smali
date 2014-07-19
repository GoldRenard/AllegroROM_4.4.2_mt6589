.class public Lcom/lenovo/lsf/common/TimeToLive;
.super Ljava/lang/Object;
.source "TimeToLive.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_EFFECTIVE:Ljava/lang/String; = "TimeToLive.EffectiveTime"

.field private static final KEY_TTL:Ljava/lang/String; = "TimeToLive.TTL"


# instance fields
.field private effectiveTime:J

.field private expiredElapsedRealTime:J

.field private ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/lenovo/lsf/common/TimeToLive;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/lsf/common/TimeToLive;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "ttl"    # I

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/lsf/common/TimeToLive;-><init>(IJ)V

    .line 19
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "ttl"    # I
    .param p2, "effectiveTime"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->ttl:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->expiredElapsedRealTime:J

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->effectiveTime:J

    .line 22
    iput p1, p0, Lcom/lenovo/lsf/common/TimeToLive;->ttl:I

    .line 23
    iput-wide p2, p0, Lcom/lenovo/lsf/common/TimeToLive;->effectiveTime:J

    .line 24
    invoke-direct {p0}, Lcom/lenovo/lsf/common/TimeToLive;->resetExpiredTime()V

    .line 25
    return-void
.end method

.method private resetExpiredTime()V
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/lenovo/lsf/common/TimeToLive;->ttl:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/lsf/common/TimeToLive;->effectiveTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 43
    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    .line 41
    iput-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->expiredElapsedRealTime:J

    .line 44
    return-void
.end method

.method public static restore(Landroid/content/SharedPreferences;)Lcom/lenovo/lsf/common/TimeToLive;
    .locals 5
    .param p0, "share"    # Landroid/content/SharedPreferences;

    .prologue
    .line 64
    sget-boolean v1, Lcom/lenovo/lsf/common/TimeToLive;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 65
    :cond_0
    new-instance v0, Lcom/lenovo/lsf/common/TimeToLive;

    const-string v1, "TimeToLive.TTL"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "TimeToLive.EffectiveTime"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lsf/common/TimeToLive;-><init>(IJ)V

    .line 67
    .local v0, "ttl":Lcom/lenovo/lsf/common/TimeToLive;
    return-object v0
.end method


# virtual methods
.method public getEffectiveTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->effectiveTime:J

    return-wide v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/lsf/common/TimeToLive;->ttl:I

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lsf/common/TimeToLive;->expiredElapsedRealTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 58
    sget-boolean v0, Lcom/lenovo/lsf/common/TimeToLive;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    const-string v0, "TimeToLive.TTL"

    iget v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->ttl:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v0, "TimeToLive.EffectiveTime"

    iget-wide v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->effectiveTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 61
    return-void
.end method

.method public setEffectiveTime(J)V
    .locals 0
    .param p1, "effectiveTime"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/lenovo/lsf/common/TimeToLive;->effectiveTime:J

    .line 33
    invoke-direct {p0}, Lcom/lenovo/lsf/common/TimeToLive;->resetExpiredTime()V

    .line 34
    return-void
.end method

.method public setTtl(I)V
    .locals 0
    .param p1, "ttl"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/lsf/common/TimeToLive;->ttl:I

    .line 48
    invoke-direct {p0}, Lcom/lenovo/lsf/common/TimeToLive;->resetExpiredTime()V

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ttl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->ttl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":expiredElapsedRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->expiredElapsedRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string v1, ":effectiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lenovo/lsf/common/TimeToLive;->effectiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
