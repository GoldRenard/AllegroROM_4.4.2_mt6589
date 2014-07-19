.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;
.super Ljava/lang/Object;
.source "CalllogDaoImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;


# static fields
.field private static final CALLLOG_FIELDS:[Ljava/lang/String;

.field private static final CALLLOG_URI:Landroid/net/Uri;

.field private static final QUERY_DATA_LIMIT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CalllogDaoImpl "


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 23
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 24
    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 25
    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 26
    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 27
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 28
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 29
    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 30
    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 31
    const-string v2, "new"

    aput-object v2, v0, v1

    .line 22
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_FIELDS:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildNewParams([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "i":I
    if-eqz p1, :cond_0

    .line 135
    array-length v3, p1

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 136
    .local v2, "newParams":[Ljava/lang/String;
    array-length v0, p1

    .line 137
    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const-string v3, "4"

    aput-object v3, v2, v0

    .line 143
    const-string v3, "0"

    aput-object v3, v2, v1

    .line 144
    return-object v2

    .line 139
    .end local v1    # "i":I
    .end local v2    # "newParams":[Ljava/lang/String;
    .restart local v0    # "i":I
    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 140
    .restart local v2    # "newParams":[Ljava/lang/String;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildNewWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < ? and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "newWhere":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 126
    .end local v0    # "newWhere":Ljava/lang/String;
    :cond_0
    const-string v0, "type < ? and type > ? "

    .restart local v0    # "newWhere":Ljava/lang/String;
    goto :goto_0
.end method

.method private cursorToCallog(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .locals 3
    .param p1, "calllogCursor"    # Landroid/database/Cursor;

    .prologue
    .line 193
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;-><init>()V

    .line 194
    .local v0, "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->id:I

    .line 195
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    .line 196
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    .line 197
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->duration:J

    .line 198
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    .line 199
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->isNew:I

    .line 201
    return-object v0
.end method

.method private doTraverseCalllog(Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;)V
    .locals 6
    .param p1, "contactCursor"    # Landroid/database/Cursor;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .local v4, "total":I
    const/4 v1, 0x0

    .line 179
    .local v1, "cur":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    :goto_1
    return-void

    .line 180
    :cond_1
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->cursorToCallog(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    move-result-object v0

    .line 185
    .local v0, "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cur":I
    .local v2, "cur":I
    invoke-interface {p2, v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;II)Z

    move-result v3

    .line 186
    .local v3, "goon":Z
    if-nez v3, :cond_2

    move v1, v2

    .line 187
    .end local v2    # "cur":I
    .restart local v1    # "cur":I
    goto :goto_1

    .end local v1    # "cur":I
    .restart local v2    # "cur":I
    :cond_2
    move v1, v2

    .end local v2    # "cur":I
    .restart local v1    # "cur":I
    goto :goto_0
.end method


# virtual methods
.method public createCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calllog"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "date"

    iget-object v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v3, "duration"

    iget-wide v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v3, "new"

    iget v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->isNew:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v3, "number"

    iget-object v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v3, "type"

    iget v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 225
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public delCalllog(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public getCalllogCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "newWhere":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewParams([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "newParams":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_FIELDS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCalllogCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "newWhere":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewParams([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "newParams":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_FIELDS:[Ljava/lang/String;

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getCalllogCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selections"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "newWhere":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewParams([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "newParams":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://call_log/calls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCalllogCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selections"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryLocalCalllogNumber(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 243
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 244
    .local v7, "count":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 246
    .local v6, "calllogs":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_FIELDS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    if-eqz v6, :cond_0

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 255
    :cond_0
    new-array v0, v10, [Landroid/database/Cursor;

    .line 256
    aput-object v6, v0, v9

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    move-object v0, v7

    .line 258
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v8

    .line 253
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 254
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 255
    new-array v1, v10, [Landroid/database/Cursor;

    .line 256
    aput-object v6, v1, v9

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    goto :goto_0

    .line 255
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    new-array v1, v10, [Landroid/database/Cursor;

    .line 256
    aput-object v6, v1, v9

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;->close([Landroid/database/Cursor;)V

    .line 257
    throw v0
.end method

.method public traverseAllCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 68
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 69
    .local v16, "offset":I
    const/4 v11, 0x0

    .line 72
    .local v11, "cur":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->getCalllogCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 73
    .local v10, "contactCursor":Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 77
    .local v17, "total":I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 79
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "where":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->buildNewParams([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "params":[Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " LIMIT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OFFSET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "newOrderBy":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_FIELDS:[Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 88
    .local v13, "dataCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_4

    move v12, v11

    .line 89
    .end local v11    # "cur":I
    .local v12, "cur":I
    :cond_3
    :goto_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 102
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_7

    move v11, v12

    .line 114
    .end local v12    # "cur":I
    .restart local v11    # "cur":I
    :cond_4
    if-eqz v13, :cond_0

    .line 115
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 90
    .end local v11    # "cur":I
    .restart local v12    # "cur":I
    :cond_5
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v13, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->cursorToCallog(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 95
    .local v9, "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "cur":I
    .restart local v11    # "cur":I
    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v9, v12, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;II)Z

    move-result v15

    .line 96
    .local v15, "goon":Z
    if-nez v15, :cond_9

    .line 98
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v4
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v15    # "goon":Z
    :catch_0
    move-exception v14

    .line 110
    .end local v9    # "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .local v14, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :goto_3
    :try_start_3
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .end local v14    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catchall_0
    move-exception v4

    .line 114
    :goto_4
    if-eqz v13, :cond_6

    .line 115
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_6
    throw v4

    .line 105
    .end local v11    # "cur":I
    .restart local v12    # "cur":I
    :cond_7
    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    .line 114
    if-eqz v13, :cond_8

    .line 115
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move v11, v12

    .line 118
    .end local v12    # "cur":I
    .restart local v11    # "cur":I
    goto :goto_1

    .line 111
    .end local v11    # "cur":I
    .restart local v12    # "cur":I
    :catch_1
    move-exception v14

    move v11, v12

    .line 112
    .end local v12    # "cur":I
    .restart local v11    # "cur":I
    .local v14, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_4
    const-string v4, "CalllogDaoImpl "

    invoke-static {v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    if-eqz v13, :cond_2

    .line 115
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 113
    .end local v11    # "cur":I
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v12    # "cur":I
    :catchall_1
    move-exception v4

    move v11, v12

    .end local v12    # "cur":I
    .restart local v11    # "cur":I
    goto :goto_4

    .line 111
    .restart local v9    # "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    :catch_2
    move-exception v14

    goto :goto_5

    .line 109
    .end local v9    # "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .end local v11    # "cur":I
    .restart local v12    # "cur":I
    :catch_3
    move-exception v14

    move v11, v12

    .end local v12    # "cur":I
    .restart local v11    # "cur":I
    goto :goto_3

    .end local v11    # "cur":I
    .restart local v12    # "cur":I
    :cond_8
    move v11, v12

    .end local v12    # "cur":I
    .restart local v11    # "cur":I
    goto/16 :goto_1

    .restart local v9    # "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .restart local v15    # "goon":Z
    :cond_9
    move v12, v11

    .end local v11    # "cur":I
    .restart local v12    # "cur":I
    goto :goto_2
.end method

.method public traverseAllCalllogOld(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;
    .param p3, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, p1, v1, v1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->getCalllogCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    .local v0, "contactCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->doTraverseCalllog(Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 60
    throw v1
.end method

.method public traverseCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereParams"    # [Ljava/lang/String;

    .prologue
    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, p4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->getCalllogCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 39
    .local v0, "contactCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->doTraverseCalllog(Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 47
    throw v1
.end method

.method public updateCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calllog"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "date"

    iget-object v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->date:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v2, "duration"

    iget-wide v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->duration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v2, "new"

    iget v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->isNew:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v2, "number"

    iget-object v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "type"

    iget v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->CALLLOG_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 239
    return-void
.end method
