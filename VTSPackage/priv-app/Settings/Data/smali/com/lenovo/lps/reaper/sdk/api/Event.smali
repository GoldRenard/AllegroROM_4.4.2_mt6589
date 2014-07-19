.class public final Lcom/lenovo/lps/reaper/sdk/api/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "%d\u0001%d\u0001%d\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%f\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%d\u0001%d\u0001%d\u0001%d"

.field private static final TAG:Ljava/lang/String; = "Event"


# instance fields
.field private account:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private eventTime:J

.field private id:J

.field private label:Ljava/lang/String;

.field private netSubType:I

.field private networkStatus:I

.field private param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

.field private prio:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

.field private randomVal:I

.field private sessionId:I

.field private sessionTimeCur:J

.field private sessionTimeFirst:J

.field private sessionTimePre:J

.field private userId:Ljava/lang/String;

.field private userIdClass:Ljava/lang/String;

.field private value:D

.field private visits:I


# direct methods
.method public constructor <init>(JILjava/lang/String;IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "sessionId"    # I
    .param p4, "account"    # Ljava/lang/String;
    .param p5, "randomVal"    # I
    .param p6, "timestampFirst"    # J
    .param p8, "timestampPre"    # J
    .param p10, "timestampCur"    # J
    .param p12, "eventTime"    # J
    .param p14, "visits"    # I
    .param p15, "category"    # Ljava/lang/String;
    .param p16, "action"    # Ljava/lang/String;
    .param p17, "label"    # Ljava/lang/String;
    .param p18, "value"    # D
    .param p20, "networkStauts"    # I
    .param p21, "netSubType"    # I
    .param p22, "userId"    # Ljava/lang/String;
    .param p23, "userIdClass"    # Ljava/lang/String;
    .param p24, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    .param p25, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->needSessionTime()Z

    move-result v2

    .line 142
    .local v2, "needSessionTime":Z
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->id:J

    .line 143
    iput p3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionId:I

    .line 144
    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->account:Ljava/lang/String;

    .line 145
    iput p5, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->randomVal:I

    .line 146
    move/from16 v0, p14

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->visits:I

    .line 147
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    .line 149
    if-nez p17, :cond_0

    const-string p17, ""

    .end local p17    # "label":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->label:Ljava/lang/String;

    .line 150
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->value:D

    .line 151
    move/from16 v0, p20

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->networkStatus:I

    .line 152
    move/from16 v0, p21

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->netSubType:I

    .line 153
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userId:Ljava/lang/String;

    .line 154
    if-nez p23, :cond_1

    const-string p23, ""

    .end local p23    # "userIdClass":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userIdClass:Ljava/lang/String;

    .line 155
    move/from16 v0, p20

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->networkStatus:I

    .line 156
    if-eqz v2, :cond_2

    .end local p6    # "timestampFirst":J
    :goto_0
    iput-wide p6, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimeFirst:J

    .line 157
    if-eqz v2, :cond_3

    .end local p8    # "timestampPre":J
    :goto_1
    iput-wide p8, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimePre:J

    .line 158
    if-eqz v2, :cond_4

    .end local p10    # "timestampCur":J
    :goto_2
    iput-wide p10, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimeCur:J

    .line 159
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->eventTime:J

    .line 160
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->prio:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .line 161
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .line 162
    return-void

    .line 156
    .restart local p6    # "timestampFirst":J
    .restart local p8    # "timestampPre":J
    .restart local p10    # "timestampCur":J
    :cond_2
    const-wide/16 p6, 0x0

    goto :goto_0

    .line 157
    .end local p6    # "timestampFirst":J
    :cond_3
    const-wide/16 p8, 0x0

    goto :goto_1

    .line 158
    .end local p8    # "timestampPre":J
    :cond_4
    const-wide/16 p10, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "value"    # D
    .param p7, "userId"    # Ljava/lang/String;
    .param p8, "userIdClass"    # Ljava/lang/String;
    .param p9, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    .param p10, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->account:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->label:Ljava/lang/String;

    .line 98
    iput-wide p5, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->value:D

    .line 99
    iput-object p9, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->prio:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .line 100
    iput-object p10, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .line 101
    iput-object p7, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userId:Ljava/lang/String;

    .line 102
    iput-object p8, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userIdClass:Ljava/lang/String;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->eventTime:J

    .line 104
    return-void
.end method


# virtual methods
.method public check()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 299
    :cond_0
    const-string v1, "Event"

    const-string v2, "categoty of event should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1
    :goto_0
    return v0

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 303
    :cond_3
    const-string v1, "Event"

    const-string v2, "action of event should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->value:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->needReport(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v1

    if-nez v1, :cond_5

    .line 307
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const-string v1, "Event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the Event is NO need send. Category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->value:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->id:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNetSubType()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->netSubType:I

    return v0
.end method

.method public getNetworkStatus()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->networkStatus:I

    return v0
.end method

.method public getParamName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParamValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPriority()Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->prio:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    return-object v0
.end method

.method public getRandomVal()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->randomVal:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionId:I

    return v0
.end method

.method public getTimestampCur()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimeCur:J

    return-wide v0
.end method

.method public getTimestampEvent()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->eventTime:J

    return-wide v0
.end method

.method public getTimestampFirst()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimeFirst:J

    return-wide v0
.end method

.method public getTimestampPre()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimePre:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userIdClass:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->value:D

    return-wide v0
.end method

.method public getVisits()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->visits:I

    return v0
.end method

.method public isParamEmpty()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public printLog()V
    .locals 6

    .prologue
    .line 190
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 194
    .local v1, "strBuff":Ljava/lang/StringBuilder;
    const-string v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Priority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->prio:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Random:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->randomVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UserIdClass:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userIdClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UserId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SessionID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Visits:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->visits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Label:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->value:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NetworkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->networkStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TimestampEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->eventTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SessionFirst:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimeFirst:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SessionPre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimePre:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SessionCur:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->sessionTimeCur:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    const-string v2, "Event"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->isParamEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_2

    .line 204
    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 205
    const-string v2, "SendingEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/api/Event;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Event Param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [Index]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [Name]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [Value]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "i":I
    :cond_2
    const-string v2, "Event"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "logType":I
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__PAGEVIEW__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getValue()D

    move-result-wide v1

    double-to-int v0, v1

    .line 174
    :cond_0
    const-string v1, "%d\u0001%d\u0001%d\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%f\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%d\u0001%d\u0001%d\u0001%d"

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getRandomVal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampEvent()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getNetworkStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserIdClass()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    invoke-virtual {p0, v6}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-virtual {p0, v6}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    invoke-virtual {p0, v7}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-virtual {p0, v7}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    invoke-virtual {p0, v8}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    invoke-virtual {p0, v8}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    invoke-virtual {p0, v9}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x11

    invoke-virtual {p0, v9}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    invoke-virtual {p0, v10}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x13

    invoke-virtual {p0, v10}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getSessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getVisits()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x16

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampFirst()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampPre()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampCur()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
