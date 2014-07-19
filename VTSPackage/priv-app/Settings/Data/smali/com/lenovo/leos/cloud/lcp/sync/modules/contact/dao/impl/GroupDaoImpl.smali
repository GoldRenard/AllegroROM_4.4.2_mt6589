.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;
.super Ljava/lang/Object;
.source "GroupDaoImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;


# static fields
.field public static final CONTENT_URI_GROUP:Landroid/net/Uri;

.field private static final GROUP_FIELDS:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private currentUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 31
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 32
    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 33
    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 34
    const-string v2, "sourceid"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->GROUP_FIELDS:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->currentUser:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private cursorToGroup(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .locals 4
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;-><init>()V

    .line 79
    .local v0, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    .line 80
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    .line 81
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->dirty:I

    .line 82
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->deleted:I

    .line 83
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->currentUser:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getGroupSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    .line 85
    return-object v0
.end method

.method private doTraverseGroup(Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V
    .locals 5
    .param p1, "groupCursor"    # Landroid/database/Cursor;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .local v3, "total":I
    const/4 v0, 0x0

    .line 64
    .local v0, "cur":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    :goto_1
    return-void

    .line 65
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->cursorToGroup(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    move-result-object v2

    .line 70
    .local v2, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cur":I
    .local v1, "cur":I
    invoke-interface {p2, v2, v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;II)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 71
    .end local v1    # "cur":I
    .restart local v0    # "cur":I
    goto :goto_1

    .end local v0    # "cur":I
    .restart local v1    # "cur":I
    :cond_2
    move v0, v1

    .end local v1    # "cur":I
    .restart local v0    # "cur":I
    goto :goto_0
.end method

.method private getGroupCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->GROUP_FIELDS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private traverseGroups(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;
    .param p2, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->doTraverseGroup(Landroid/database/Cursor;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 52
    throw v0
.end method


# virtual methods
.method public createGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/net/Uri;
    .locals 3
    .param p1, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    .prologue
    .line 245
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public varargs deleteGroups([I)V
    .locals 7
    .param p1, "ids"    # [I

    .prologue
    .line 203
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 204
    .local v0, "deleteUri":Landroid/net/Uri;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 207
    return-void

    .line 204
    :cond_0
    aget v1, p1, v2

    .line 205
    .local v1, "id":I
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public deleteGroupsSid(I)V
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->currentUser:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->delGroupSid(Landroid/content/Context;ILjava/lang/String;)V

    .line 257
    return-void
.end method

.method public loadGroup(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .locals 8
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v7, 0x0

    .line 190
    .local v7, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->GROUP_FIELDS:[Ljava/lang/String;

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 191
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->cursorToGroup(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    move-result-object v7

    .line 195
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    return-object v7
.end method

.method public newClearDeletedGroups()Landroid/content/ContentProviderOperation;
    .locals 4

    .prologue
    .line 237
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 239
    .local v0, "deleteUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 240
    const-string v2, "deleted= 1"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 238
    return-object v1
.end method

.method public newCreateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    .prologue
    .line 96
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 97
    const-string v1, "title"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 98
    const-string v1, "sourceid"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 99
    const-string v1, "group_visible"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public newDeleteOpertion(I)Landroid/content/ContentProviderOperation;
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 105
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "deleteUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 106
    return-object v1
.end method

.method public newDeleteOpertion(Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 5
    .param p1, "sourceid"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 230
    .local v0, "deleteUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 231
    const-string v2, "sourceid= ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 229
    return-object v1
.end method

.method public newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    .prologue
    .line 114
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 116
    const-string v1, "title"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 117
    const-string v1, "sourceid"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 118
    const-string v1, "dirty"

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->dirty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public varargs newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 6
    .param p1, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .param p2, "attrs"    # [Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 144
    :goto_0
    return-object v2

    .line 128
    :cond_1
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->CONTENT_URI_GROUP:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 129
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 130
    array-length v3, p2

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 144
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_2
    aget-object v0, p2, v2

    .line 131
    .local v0, "attr":Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    const-string v4, "title"

    iget-object v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 130
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_3
    const-string v4, "sourceid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    const-string v4, "sourceid"

    iget-object v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 135
    :cond_4
    const-string v4, "dirty"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    const-string v4, "dirty"

    iget v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->dirty:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 137
    :cond_5
    const-string v4, "deleted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 138
    const-string v4, "deleted"

    iget v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->deleted:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 140
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attribute "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not allowed to update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public queryDeletedGroups()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    const-string v4, "deleted<>0"

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->getGroupCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 172
    .local v1, "groupCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 180
    :cond_1
    if-eqz v1, :cond_2

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_2
    return-object v2

    .line 173
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->cursorToGroup(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    move-result-object v0

    .line 177
    .local v0, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v0    # "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    :catchall_0
    move-exception v3

    .line 180
    if-eqz v1, :cond_4

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_4
    throw v3
.end method

.method public queryGroup(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .locals 5
    .param p1, "cid"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "groupCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->getGroupCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->cursorToGroup(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_0
    :goto_0
    return-object v1

    .line 217
    :catchall_0
    move-exception v1

    .line 218
    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_1
    throw v1

    .line 218
    :cond_2
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public queryGroupByTitle(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object v1

    .line 269
    :cond_1
    const/4 v0, 0x0

    .line 271
    .local v0, "groupCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    const-string v3, "title = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->getGroupCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->cursorToGroup(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v1

    .line 276
    if-eqz v0, :cond_2

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_2
    throw v1

    .line 276
    :cond_3
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public queryGroupSid(I)Ljava/lang/String;
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->currentUser:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getGroupSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryGroupsByClientIds(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "commaIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id in ( "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->getGroupCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 152
    .local v1, "groupCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 160
    :cond_1
    if-eqz v1, :cond_2

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_2
    return-object v2

    .line 153
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->cursorToGroup(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    move-result-object v0

    .line 157
    .local v0, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    :catchall_0
    move-exception v3

    .line 160
    if-eqz v1, :cond_4

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_4
    throw v3
.end method

.method public traverseAllGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V
    .locals 3
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->getGroupCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 59
    .local v0, "dataCursor":Landroid/database/Cursor;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->traverseGroups(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;Landroid/database/Cursor;)V

    .line 60
    return-void
.end method

.method public traverseVisiableGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    const-string v2, "deleted =0 "

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->getGroupCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, "dataCursor":Landroid/database/Cursor;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->traverseGroups(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;Landroid/database/Cursor;)V

    .line 42
    return-void
.end method

.method public updateGroupsSid(ILjava/lang/String;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;->currentUser:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->setGroupSid(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
