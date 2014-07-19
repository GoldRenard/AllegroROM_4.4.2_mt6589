.class Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$3;
.super Ljava/lang/Object;
.source "AnalyticsTrackerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addSessionVisits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$3;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$3;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    # getter for: Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->access$300(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->addSessionVisits()V

    .line 420
    return-void
.end method
