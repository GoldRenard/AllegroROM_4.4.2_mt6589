.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;
.super Ljava/lang/Object;
.source "SmsConverChecksumBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/ChecksumBuilder;


# instance fields
.field private cacheSmsKey2Locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isRestore:Z

.field private smsConversation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end field

.field private smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dao"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->cacheSmsKey2Locks:Ljava/util/Map;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->cacheSmsKey2Locks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    return-object v0
.end method

.method private batchQuerySms2Request(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 14
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->buildWhereByBackupOrRestore()Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v3, 0x0

    invoke-interface {v1, v9, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, "allTotal":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "delSmsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 72
    .local v4, "phoneList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;I)V

    .line 94
    .local v0, "visitor":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v10, 0x0

    const-string v11, " date DESC,body "

    .line 95
    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v8, v0

    .line 94
    invoke-interface/range {v7 .. v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 96
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->deleteSmsList2Asyn(Ljava/util/List;)V

    .line 99
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->buildPhonelist(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V

    .line 100
    return-void
.end method

.method private buildBackupPhoneList(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V
    .locals 3
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "phoneList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const-string v1, "all"

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void

    .line 144
    :cond_1
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    .line 145
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "phoneNum":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addPhotoList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildPhonelist(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "phoneList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->isRestore:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->buildRestorePhoneList(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->buildBackupPhoneList(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private buildRestorePhoneList(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;)V
    .locals 3
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    .prologue
    .line 152
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsConversation:Ljava/util/List;

    if-nez v2, :cond_1

    .line 153
    const-string v2, "all"

    invoke-virtual {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void

    .line 156
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addType(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsConversation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsConversation:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    .line 160
    .local v0, "conversation":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addPhotoList(Ljava/lang/String;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildWhereByBackupOrRestore()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "conversWhere":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->isRestore:Z

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsConversation:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildSmsAddressWhere(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsConversation:Ljava/util/List;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildSmsConversWhere(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private deleteSmsList2Asyn(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "delSmsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    .local v0, "delThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private newChecksumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    .locals 3

    .prologue
    .line 58
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lsf/account/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "deviceId":Ljava/lang/String;
    const-string v1, "-1"

    .line 60
    .local v1, "pid":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    invoke-direct {v2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    .locals 1
    .param p1, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->newChecksumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    move-result-object v0

    .line 50
    .local v0, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->batchQuerySms2Request(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    .line 51
    return-object v0
.end method

.method public getCacheSmsKey2Locks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->cacheSmsKey2Locks:Ljava/util/Map;

    return-object v0
.end method

.method public setCacheSmsKey2Locks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "cacheSmsKey2Locks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->cacheSmsKey2Locks:Ljava/util/Map;

    .line 171
    return-void
.end method

.method public setRestore(Z)V
    .locals 0
    .param p1, "isRestore"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->isRestore:Z

    .line 42
    return-void
.end method

.method public setSmsConversation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsConversation:Ljava/util/List;

    .line 38
    return-void
.end method
