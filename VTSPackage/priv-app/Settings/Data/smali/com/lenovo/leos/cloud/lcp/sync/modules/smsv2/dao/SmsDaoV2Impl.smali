.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;
.super Ljava/lang/Object;
.source "SmsDaoV2Impl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;


# static fields
.field public static final DEF_WHERE:Ljava/lang/String;

.field private static final SMS_FIELDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsDaoV2Impl"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 21
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 22
    const-string v3, "thread_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 23
    const-string v3, "address"

    aput-object v3, v1, v2

    .line 24
    const-string v2, "date"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    .line 25
    const-string v3, "read"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 26
    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 27
    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 28
    const-string v3, "subject"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 29
    const-string v3, "body"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 30
    const-string v3, "service_center"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 31
    const-string v3, "locked"

    aput-object v3, v1, v2

    .line 21
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_FIELDS:[Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "whereTemp":Ljava/lang/StringBuilder;
    const-string v1, " thread_id is not null and address is not null and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, " ( sms.type != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->DEF_WHERE:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->contentResolver:Landroid/content/ContentResolver;

    .line 38
    return-void
.end method

.method private buildQueryWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->DEF_WHERE:Ljava/lang/String;

    .line 69
    .local v0, "queryWhere":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->DEF_WHERE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method private cursorToSms(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .locals 3
    .param p1, "smsCursor"    # Landroid/database/Cursor;

    .prologue
    .line 110
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;-><init>()V

    .line 111
    .local v0, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setId(I)V

    .line 112
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setThreadId(I)V

    .line 113
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setAddress(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setDate(J)V

    .line 115
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setRead(I)V

    .line 116
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setStatus(I)V

    .line 117
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setType(I)V

    .line 118
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setSubject(Ljava/lang/String;)V

    .line 119
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setBody(Ljava/lang/String;)V

    .line 120
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setServiceCenter(Ljava/lang/String;)V

    .line 121
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setLocked(I)V

    .line 122
    return-object v0
.end method


# virtual methods
.method public asycDeleteSms(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "delSmsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v3, "idSb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 174
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id in ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 174
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "deleteCount":I
    return v1

    .line 168
    .end local v1    # "deleteCount":I
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 169
    .local v4, "smsId":Ljava/lang/Integer;
    if-lez v2, :cond_1

    .line 170
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public buildDeleteSms2Opertions(Ljava/util/List;I)V
    .locals 6
    .param p2, "smsId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 158
    const-string v2, "_id=?"

    .line 159
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 160
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public buildInsertSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V
    .locals 4
    .param p2, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 182
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "address"

    .line 183
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    const-string v1, "date"

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 185
    const-string v1, "type"

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 186
    const-string v1, "subject"

    .line 187
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 188
    const-string v1, "body"

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 190
    const-string v1, "service_center"

    .line 191
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 192
    const-string v1, "locked"

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    const-string v1, "read"

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public buildUpdateSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V
    .locals 8
    .param p2, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 201
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v1, "updateWhere":Ljava/lang/StringBuffer;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v2, "body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getBody()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 210
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 212
    const-string v2, "locked"

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->buildQueryWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "queryWhere":Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_FIELDS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 55
    if-nez v6, :cond_0

    .line 61
    new-array v0, v10, [Landroid/database/Cursor;

    .line 62
    aput-object v6, v0, v9

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    move v0, v8

    .line 64
    :goto_0
    return v0

    .line 58
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 61
    new-array v1, v10, [Landroid/database/Cursor;

    .line 62
    aput-object v6, v1, v9

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v7

    .line 60
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    new-array v0, v10, [Landroid/database/Cursor;

    .line 62
    aput-object v6, v0, v9

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    move v0, v8

    .line 64
    goto :goto_0

    .line 61
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    new-array v1, v10, [Landroid/database/Cursor;

    .line 62
    aput-object v6, v1, v9

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 63
    throw v0
.end method

.method public queryConversation(II)Ljava/util/List;
    .locals 13
    .param p1, "limit"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v6, "allSms":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count(1) AS smsCount,a.address , a.body, b._id  from sms AS a,threads AS b where a.thread_id=b._id and a.address is not null and (a.type !=3)  GROUP BY b._id ORDER BY  a.date desc LIMIT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, " OFFSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 136
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 137
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-array v0, v12, [Landroid/database/Cursor;

    .line 149
    aput-object v7, v0, v11

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 151
    :goto_1
    return-object v6

    .line 139
    :cond_0
    :try_start_1
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    invoke-direct {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;-><init>()V

    .line 140
    .local v9, "s":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->setCount(I)V

    .line 141
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->setAddress(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->setContent(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->setThreadId(I)V

    .line 144
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    .end local v9    # "s":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    :catch_0
    move-exception v8

    .line 147
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    new-array v0, v12, [Landroid/database/Cursor;

    .line 149
    aput-object v7, v0, v11

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_1

    .line 148
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    new-array v1, v12, [Landroid/database/Cursor;

    .line 149
    aput-object v7, v1, v11

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 150
    throw v0
.end method

.method public queryThreadIdByPhoneNumber(Ljava/lang/String;)I
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "address like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "queryWhere":Ljava/lang/String;
    const/4 v6, 0x0

    .line 223
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_FIELDS:[Ljava/lang/String;

    .line 224
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 223
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 225
    if-nez v6, :cond_0

    .line 239
    new-array v0, v11, [Landroid/database/Cursor;

    .line 240
    aput-object v6, v0, v10

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    move v9, v10

    .line 242
    :goto_0
    return v9

    .line 228
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 229
    .local v9, "total":I
    if-nez v9, :cond_1

    .line 239
    new-array v0, v11, [Landroid/database/Cursor;

    .line 240
    aput-object v6, v0, v10

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    move v9, v10

    .line 230
    goto :goto_0

    .line 232
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->cursorToSms(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    move-result-object v8

    .line 234
    .local v8, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getThreadId()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    .line 239
    .end local v9    # "total":I
    new-array v0, v11, [Landroid/database/Cursor;

    .line 240
    aput-object v6, v0, v10

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_0

    .line 239
    .end local v8    # "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .restart local v9    # "total":I
    :cond_2
    new-array v0, v11, [Landroid/database/Cursor;

    .line 240
    aput-object v6, v0, v10

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_0

    .line 237
    .end local v9    # "total":I
    :catch_0
    move-exception v7

    .line 238
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    new-array v0, v11, [Landroid/database/Cursor;

    .line 240
    aput-object v6, v0, v10

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    move v9, v10

    .line 242
    goto :goto_0

    .line 239
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    new-array v1, v11, [Landroid/database/Cursor;

    .line 240
    aput-object v6, v1, v10

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 241
    throw v0
.end method

.method public traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 14
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "limit"    # I
    .param p6, "offset"    # I

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OFFSET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "newOrderBy":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->buildQueryWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "traverseWhere":Ljava/lang/String;
    const/4 v9, 0x0

    .line 82
    .local v9, "dataCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_URI:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->SMS_FIELDS:[Ljava/lang/String;

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 84
    if-nez v9, :cond_0

    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 103
    aput-object v9, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 85
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    .line 87
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 88
    .local v13, "total":I
    if-nez v13, :cond_1

    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 103
    aput-object v9, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 89
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    const/4 v7, 0x0

    .local v7, "cur":I
    move v8, v7

    .line 92
    .end local v7    # "cur":I
    .local v8, "cur":I
    :goto_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 103
    aput-object v9, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 99
    const/4 v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    :try_start_3
    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->cursorToSms(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    move-result-object v12

    .line 94
    .local v12, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "cur":I
    .restart local v7    # "cur":I
    move/from16 v0, p6

    invoke-interface {p1, v12, v8, v13, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;III)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    .line 95
    .local v11, "goon":Z
    if-nez v11, :cond_3

    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 103
    aput-object v9, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 96
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    .end local v7    # "cur":I
    .end local v11    # "goon":Z
    .end local v12    # "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .end local v13    # "total":I
    :catch_0
    move-exception v10

    .line 101
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    .line 103
    aput-object v9, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 105
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    .line 103
    aput-object v9, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 104
    throw v1

    .restart local v7    # "cur":I
    .restart local v11    # "goon":Z
    .restart local v12    # "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .restart local v13    # "total":I
    :cond_3
    move v8, v7

    .end local v7    # "cur":I
    .restart local v8    # "cur":I
    goto :goto_1
.end method
