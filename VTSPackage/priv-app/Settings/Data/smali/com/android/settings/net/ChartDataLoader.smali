.class public Lcom/android/settings/net/ChartDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/settings/net/ChartData;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_APP:Ljava/lang/String; = "app"

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field private static final TAG:Ljava/lang/String; = "ChartDataLoader"


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/net/INetworkStatsSession;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p2, p0, Lcom/android/settings/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    .line 65
    iput-object p3, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    .line 66
    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;
    .locals 1
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "app"    # Lcom/android/settings/DataUsageSummary$AppItem;

    .prologue
    .line 51
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "app"    # Lcom/android/settings/DataUsageSummary$AppItem;
    .param p2, "fields"    # I

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    return-object v0
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "existing"    # Landroid/net/NetworkStatsHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    .line 150
    .local v6, "history":Landroid/net/NetworkStatsHistory;
    if-eqz p4, :cond_0

    .line 151
    invoke-virtual {p4, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 154
    .end local p4    # "existing":Landroid/net/NetworkStatsHistory;
    :goto_0
    return-object p4

    .restart local p4    # "existing":Landroid/net/NetworkStatsHistory;
    :cond_0
    move-object p4, v6

    goto :goto_0
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Lcom/android/settings/net/ChartData;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "app"    # Lcom/android/settings/DataUsageSummary$AppItem;
    .param p3, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0x36ee80

    .line 91
    new-instance v0, Lcom/android/settings/net/ChartData;

    invoke-direct {v0}, Lcom/android/settings/net/ChartData;-><init>()V

    .line 92
    .local v0, "data":Lcom/android/settings/net/ChartData;
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v4, p1, p3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    .line 95
    iget-object v4, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    if-nez v4, :cond_0

    .line 96
    const-string v4, "ChartDataLoader"

    const-string v5, "error ,data.network == null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    if-eqz p2, :cond_2

    .line 102
    iget-object v4, p2, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 103
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 104
    iget-object v4, p2, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 105
    .local v3, "uid":I
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/settings/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 107
    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/settings/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "uid":I
    :cond_1
    if-lez v2, :cond_3

    .line 112
    new-instance v4, Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    .line 113
    iget-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4, v5}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 114
    iget-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4, v5}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 122
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    :goto_1
    const-string v4, "ChartDataLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data.detailDefault = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data.detailForeground "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v0

    .line 116
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_3
    new-instance v4, Landroid/net/NetworkStatsHistory;

    invoke-direct {v4, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 117
    new-instance v4, Landroid/net/NetworkStatsHistory;

    invoke-direct {v4, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 118
    new-instance v4, Landroid/net/NetworkStatsHistory;

    invoke-direct {v4, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings/net/ChartData;
    .locals 6

    .prologue
    .line 76
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "template"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 77
    .local v3, "template":Landroid/net/NetworkTemplate;
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "app"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 78
    .local v0, "app":Lcom/android/settings/DataUsageSummary$AppItem;
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "fields"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, "fields":I
    :try_start_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/net/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Lcom/android/settings/net/ChartData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 82
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "problem reading network stats"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->loadInBackground()Lcom/android/settings/net/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/content/Loader;->onReset()V

    .line 137
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 138
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/content/Loader;->onStartLoading()V

    .line 71
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 72
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/content/Loader;->onStopLoading()V

    .line 131
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 132
    return-void
.end method
