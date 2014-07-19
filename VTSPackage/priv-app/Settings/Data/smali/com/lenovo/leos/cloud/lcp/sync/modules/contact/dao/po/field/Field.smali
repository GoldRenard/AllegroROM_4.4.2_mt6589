.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ANDROID_MIMETYPE_X_SIPADDRESS:Ljava/lang/String; = "vnd.android.cursor.item/sip_address"

.field public static final ANDROID_MIMETYPE_X_SOCIALNETWORK:Ljava/lang/String; = "vnd.android.cursor.item/socialnetwork"

.field public static final FLAG_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final MIMETYPE_ADDRESS:Ljava/lang/String; = "ADDRESS"

.field public static final MIMETYPE_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final MIMETYPE_EVENT:Ljava/lang/String; = "EVENT"

.field public static final MIMETYPE_GROUP:Ljava/lang/String; = "GROUP"

.field public static final MIMETYPE_IDENTITY:Ljava/lang/String; = "MIMETYPE_IDENTITY"

.field public static final MIMETYPE_IM:Ljava/lang/String; = "IM"

.field public static final MIMETYPE_NAME:Ljava/lang/String; = "NAME"

.field public static final MIMETYPE_NICKNAME:Ljava/lang/String; = "NICKNAME"

.field public static final MIMETYPE_NOTES:Ljava/lang/String; = "NOTES"

.field public static final MIMETYPE_ORGANIZATION:Ljava/lang/String; = "ORGANIZATION"

.field public static final MIMETYPE_PHONE:Ljava/lang/String; = "PHONE"

.field public static final MIMETYPE_PHOTO:Ljava/lang/String; = "IMAGE"

.field public static final MIMETYPE_RELATION:Ljava/lang/String; = "RELATION"

.field public static final MIMETYPE_SIPADDRESS:Ljava/lang/String; = "SIPADDRESS"

.field public static final MIMETYPE_SOCIALNETWORK:Ljava/lang/String; = "SOCIALNETWORK"

.field public static final MIMETYPE_WEBSITES:Ljava/lang/String; = "WEBSITES"

.field public static final NA_FLAG:Ljava/lang/String; = "-1"

.field private static final lenovo2androidMimeType:Ljava/util/Map;
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

.field private static final serialVersionUID:J = 0x5f3af12bb5cc6b2fL


# instance fields
.field public cid:I

.field public flag:Ljava/lang/String;

.field public id:I

.field public mimetype:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field private sortCacheString:Ljava/lang/String;

.field public stared:I

.field public value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    .line 58
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "NAME"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "EMAIL"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "PHONE"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "ADDRESS"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "SIPADDRESS"

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "EVENT"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "IM"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "NICKNAME"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "NOTES"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "SOCIALNETWORK"

    const-string v2, "vnd.android.cursor.item/socialnetwork"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "RELATION"

    const-string v2, "vnd.android.cursor.item/relation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "WEBSITES"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "ORGANIZATION"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "IMAGE"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    const-string v1, "GROUP"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sortCacheString:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private static mimetypeProtocol2Android(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->lenovo2androidMimeType:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "androidtype":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 154
    const-string v0, "vnd.android.cursor.item/note"

    .line 156
    :cond_0
    return-object v0
.end method

.method public static newInstance(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .locals 3
    .param p0, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->mimetype:Ljava/lang/String;

    .line 99
    .local v0, "dataMimeType":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredName;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredName;-><init>()V

    .line 114
    .local v1, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->fetchFlagFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 116
    invoke-virtual {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->fetchValueFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 117
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->cid:I

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->id:I

    .line 118
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    .line 119
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->sid:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sid:Ljava/lang/String;

    .line 120
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->stared:I

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->stared:I

    goto :goto_0

    .line 100
    .end local v1    # "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_3
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Email;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Email;-><init>()V

    goto :goto_1

    .line 101
    :cond_4
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Phone;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Phone;-><init>()V

    goto :goto_1

    .line 102
    :cond_5
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredPostal;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredPostal;-><init>()V

    goto :goto_1

    .line 103
    :cond_6
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Event;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Event;-><init>()V

    goto :goto_1

    .line 104
    :cond_7
    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;-><init>()V

    goto :goto_1

    .line 105
    :cond_8
    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Note;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Note;-><init>()V

    goto :goto_1

    .line 106
    :cond_9
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Relation;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Relation;-><init>()V

    goto :goto_1

    .line 107
    :cond_a
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Website;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Website;-><init>()V

    goto/16 :goto_1

    .line 108
    :cond_b
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;-><init>()V

    goto/16 :goto_1

    .line 109
    :cond_c
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Photo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Photo;-><init>()V

    goto/16 :goto_1

    .line 110
    :cond_d
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;-><init>()V

    goto/16 :goto_1

    .line 111
    :cond_e
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Nickname;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Nickname;-><init>()V

    goto/16 :goto_1

    .line 112
    :cond_f
    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;-><init>()V

    goto/16 :goto_1

    .line 113
    :cond_10
    const-string v2, "vnd.android.cursor.item/socialnetwork"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SocialNetwork;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SocialNetwork;-><init>()V

    goto/16 :goto_1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "NAME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredName;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredName;-><init>()V

    :goto_0
    return-object v0

    .line 77
    :cond_0
    const-string v0, "EMAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Email;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Email;-><init>()V

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "PHONE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Phone;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Phone;-><init>()V

    goto :goto_0

    .line 79
    :cond_2
    const-string v0, "ADDRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredPostal;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredPostal;-><init>()V

    goto :goto_0

    .line 80
    :cond_3
    const-string v0, "EVENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Event;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Event;-><init>()V

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "IM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;-><init>()V

    goto :goto_0

    .line 82
    :cond_5
    const-string v0, "NOTES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Note;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Note;-><init>()V

    goto :goto_0

    .line 83
    :cond_6
    const-string v0, "RELATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Relation;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Relation;-><init>()V

    goto :goto_0

    .line 84
    :cond_7
    const-string v0, "WEBSITES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Website;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Website;-><init>()V

    goto :goto_0

    .line 85
    :cond_8
    const-string v0, "ORGANIZATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;-><init>()V

    goto :goto_0

    .line 86
    :cond_9
    const-string v0, "IMAGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Photo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Photo;-><init>()V

    goto/16 :goto_0

    .line 87
    :cond_a
    const-string v0, "GROUP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/GroupMembership;-><init>()V

    goto/16 :goto_0

    .line 88
    :cond_b
    const-string v0, "NICKNAME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Nickname;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Nickname;-><init>()V

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string v0, "SIPADDRESS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;-><init>()V

    goto/16 :goto_0

    .line 90
    :cond_d
    const-string v0, "SOCIALNETWORK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SocialNetwork;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SocialNetwork;-><init>()V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .locals 2
    .param p0, "jsonfield"    # Lorg/json/JSONObject;

    .prologue
    .line 126
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 127
    .local v0, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :goto_0
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->fetchFlagFromJson(Lorg/json/JSONObject;)V

    .line 129
    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->fetchValueFromJson(Lorg/json/JSONObject;)V

    .line 131
    :cond_0
    return-object v0

    .line 126
    .end local v0    # "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected appendIfNotEmpty(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "n":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)I
    .locals 3
    .param p1, "f"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v2, 0x1

    .line 245
    :goto_0
    return v2

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v1, ""

    .line 232
    .local v1, "tV":Ljava/lang/String;
    :goto_1
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v0, ""

    .line 233
    .local v0, "fV":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 231
    .end local v0    # "fV":Ljava/lang/String;
    .end local v1    # "tV":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    goto :goto_1

    .line 232
    .restart local v1    # "tV":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    goto :goto_2

    .line 237
    .restart local v0    # "fV":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v1, ""

    .line 238
    :goto_3
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v0, ""

    .line 239
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    goto :goto_3

    .line 238
    :cond_5
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    goto :goto_4

    .line 243
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->compareTo(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)I

    move-result v0

    return v0
.end method

.method protected fetchFlagFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 3
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 180
    :try_start_0
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, "typeId":I
    if-nez v1, :cond_2

    .line 182
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data3:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "typeId":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->getNullFlagValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    .line 194
    :cond_1
    return-void

    .line 184
    .restart local v1    # "typeId":I
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->getFlagName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    .end local v1    # "typeId":I
    :catch_0
    move-exception v0

    .line 187
    .local v0, "nfe":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected fetchFlagFromJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonField"    # Lorg/json/JSONObject;

    .prologue
    .line 201
    const-string v0, "f"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    .line 202
    return-void
.end method

.method protected fetchValueFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 165
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    .line 166
    return-void
.end method

.method protected fetchValueFromJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonfield"    # Lorg/json/JSONObject;

    .prologue
    .line 169
    const-string v0, "v"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method protected flagToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 2
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->getTypeId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    .local v0, "typeId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data3:Ljava/lang/String;

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getFlagName(I)Ljava/lang/String;
    .locals 1
    .param p1, "flagId"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNullFlagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "-1"

    return-object v0
.end method

.method protected getTypeId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "flagStr"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method protected jsonToChecksumString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const-string v7, ""

    .line 285
    :goto_0
    return-object v7

    .line 255
    :cond_0
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sortCacheString:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 256
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sortCacheString:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 260
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 261
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 262
    .local v4, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 263
    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 267
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 269
    const/4 v0, 0x0

    :goto_2
    array-length v7, v4

    if-lt v0, v7, :cond_3

    .line 283
    const/16 v7, 0x7d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sortCacheString:Ljava/lang/String;

    .line 285
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sortCacheString:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v2, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 270
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    aget-object v2, v4, v0

    .line 271
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "vo":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 269
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 275
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    .line 276
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    :cond_6
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/JSONUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 281
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/JSONUtil;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method protected putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    :cond_0
    return-void
.end method

.method public toData()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;-><init>()V

    .line 136
    .local v0, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flagToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->valueToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 138
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->id:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->cid:I

    .line 139
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetypeProtocol2Android(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->mimetype:Ljava/lang/String;

    .line 140
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 220
    const-string v1, ""

    .line 223
    :goto_0
    return-object v1

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    instance-of v0, v1, Lorg/json/JSONObject;

    .line 223
    .local v0, "isJson":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->jsonToChecksumString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected valueToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    .line 216
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
