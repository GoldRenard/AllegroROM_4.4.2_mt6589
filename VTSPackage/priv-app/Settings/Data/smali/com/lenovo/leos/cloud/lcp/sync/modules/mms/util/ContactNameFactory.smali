.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;
.super Ljava/lang/Object;
.source "ContactNameFactory.java"


# static fields
.field private static final CONTACT_DATA_FIELDS:[Ljava/lang/String;

.field public static final CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

.field public static final CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

.field private static factory:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;


# instance fields
.field private allContactname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->CONTENT_URI_RAWCONTACT:Landroid/net/Uri;

    .line 19
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    .line 20
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 21
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 22
    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 23
    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 24
    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 25
    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 26
    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 27
    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 28
    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 29
    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 30
    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 31
    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 32
    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 33
    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 34
    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 35
    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 36
    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 37
    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 38
    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 39
    const-string v2, "starred"

    aput-object v2, v0, v1

    .line 20
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->CONTACT_DATA_FIELDS:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->allContactname:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private getExtendRawContactInfo(ILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 10
    .param p1, "rawContactId"    # I
    .param p2, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->CONTACT_DATA_FIELDS:[Ljava/lang/String;

    .line 126
    const-string v3, "raw_contact_id = ? and mimetype = ? "

    .line 128
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 129
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    .line 130
    const-string v9, "vnd.android.cursor.item/name"

    aput-object v9, v4, v5

    .line 131
    const/4 v5, 0x0

    .line 125
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 134
    .local v8, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    if-eqz v6, :cond_1

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "data1":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->allContactname:Ljava/util/Map;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->formatPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v7    # "data1":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    return-object v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->factory:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->factory:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;

    .line 96
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->factory:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;

    return-object v0
.end method


# virtual methods
.method public getContactNameByAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->allContactname:Ljava/util/Map;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->formatPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRawContactListByPhoneNos(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)Ljava/util/List;
    .locals 11
    .param p1, "phoneNos"    # Ljava/lang/StringBuffer;
    .param p2, "otherPhoneNos"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->CONTENT_URI_RAWCONTACT_DATA:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->CONTACT_DATA_FIELDS:[Ljava/lang/String;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mimetype = ? and (data1 in ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "vnd.android.cursor.item/phone_v2"

    aput-object v10, v4, v5

    .line 109
    const/4 v5, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, "c":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v9, "rawContacts":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    if-eqz v6, :cond_0

    .line 112
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    return-object v9

    .line 113
    :cond_1
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 114
    .local v8, "rawContactId":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "data1":Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->getExtendRawContactInfo(ILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    goto :goto_0
.end method

.method public setContactByPhoneNumSet(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->allContactname:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v3, "phoneNos":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "otherPhoneNos":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 77
    .local v4, "phoneNosSize":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 80
    .local v1, "otherPhoneNosSize":I
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    .end local v1    # "otherPhoneNosSize":I
    .end local v4    # "phoneNosSize":I
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "phoneAddress":Ljava/lang/String;
    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v6, "+86"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
