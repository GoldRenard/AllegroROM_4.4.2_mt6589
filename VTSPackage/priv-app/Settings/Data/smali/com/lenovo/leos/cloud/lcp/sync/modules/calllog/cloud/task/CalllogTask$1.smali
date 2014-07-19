.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;
.super Ljava/lang/Object;
.source "CalllogTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->buildGroupCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field calllogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;",
            ">;"
        }
    .end annotation
.end field

.field curCalllogUid:Ljava/lang/String;

.field curMonth:Ljava/lang/String;

.field df:Ljava/text/SimpleDateFormat;

.field lastCalllogUid:Ljava/lang/String;

.field lastMonth:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    .line 96
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastMonth:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->curMonth:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastCalllogUid:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->curCalllogUid:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->df:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private buildRequest()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 135
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog$CalllogComparator;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog$CalllogComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "lastAddr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 138
    .local v3, "count":I
    const-wide/16 v4, 0x0

    .line 140
    .local v4, "timesum":J
    const/4 v9, 0x0

    .local v9, "i":I
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "len":I
    :goto_0
    if-lt v9, v10, :cond_1

    .line 153
    if-lez v3, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastMonth:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;->addMonthData(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;)V

    .line 156
    :cond_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    .line 142
    .local v7, "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    iget-object v8, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    .line 143
    .local v8, "curAddr":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 145
    iget-object v0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v4, v0

    .line 151
    :goto_1
    move-object v2, v8

    .line 140
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastMonth:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumRequest;->addMonthData(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;)V

    .line 148
    const/4 v3, 0x1

    .line 149
    iget-object v0, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1
.end method

.method private checkbuildRequest(II)V
    .locals 1
    .param p1, "cur"    # I
    .param p2, "total"    # I

    .prologue
    .line 129
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->buildRequest()V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;II)Z
    .locals 4
    .param p1, "calllog"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;

    const/high16 v1, 0x3f800000

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 108
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->uid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->curCalllogUid:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastCalllogUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastCalllogUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->curCalllogUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->calllogDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->val$context:Landroid/content/Context;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->id:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;->delCalllog(Landroid/content/Context;I)V

    .line 124
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->checkbuildRequest(II)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->uid2id:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->uid()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->df:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->curMonth:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastMonth:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastMonth:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->curMonth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->curMonth:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastMonth:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->uid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->lastCalllogUid:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->buildRequest()V

    .line 118
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask$1;->calllogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
