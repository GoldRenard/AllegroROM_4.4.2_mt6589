.class public Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;
.super Ljava/lang/Object;
.source "TrafficItem.java"


# instance fields
.field private rxBytes:J

.field private txBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "rxBytes"    # J
    .param p3, "txBytes"    # J

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->rxBytes:J

    .line 9
    iput-wide p3, p0, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->txBytes:J

    .line 10
    return-void
.end method


# virtual methods
.method public getRxBytes()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->rxBytes:J

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->txBytes:J

    return-wide v0
.end method

.method public setRxBytes(J)V
    .locals 0
    .param p1, "rxBytes"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->rxBytes:J

    .line 18
    return-void
.end method

.method public setTxBytes(J)V
    .locals 0
    .param p1, "txBytes"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->txBytes:J

    .line 26
    return-void
.end method
