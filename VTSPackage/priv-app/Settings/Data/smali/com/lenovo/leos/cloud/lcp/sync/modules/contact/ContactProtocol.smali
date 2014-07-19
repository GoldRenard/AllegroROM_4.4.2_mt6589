.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.super Ljava/lang/Object;
.source "ContactProtocol.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;
    }
.end annotation


# static fields
.field public static final KEY_ADD:Ljava/lang/String; = "add"

.field public static final KEY_ADLER:Ljava/lang/String; = "adler"

.field public static final KEY_CID:Ljava/lang/String; = "cid"

.field public static final KEY_CLIENT_PORTRAIT:Ljava/lang/String; = "cpt"

.field public static final KEY_CONTACT:Ljava/lang/String; = "ct"

.field public static final KEY_CONTACT_GROUP:Ljava/lang/String; = "ct_cg"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_CRC:Ljava/lang/String; = "crc"

.field public static final KEY_CUR:Ljava/lang/String; = "cur"

.field public static final KEY_C_ADD:Ljava/lang/String; = "c_add"

.field public static final KEY_C_DEL:Ljava/lang/String; = "c_del"

.field public static final KEY_C_DIFF:Ljava/lang/String; = "c_diff"

.field public static final KEY_C_EXIST:Ljava/lang/String; = "cexist"

.field public static final KEY_C_SID:Ljava/lang/String; = "csid"

.field public static final KEY_DELETE:Ljava/lang/String; = "delete"

.field public static final KEY_DELETE_EMPTY_CG:Ljava/lang/String; = "delete_empty_cg"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_DIFF:Ljava/lang/String; = "diff"

.field public static final KEY_DUP:Ljava/lang/String; = "dup"

.field public static final KEY_ERROR:Ljava/lang/String; = "error"

.field public static final KEY_EXIST:Ljava/lang/String; = "exist"

.field public static final KEY_FAIL:Ljava/lang/String; = "fails"

.field public static final KEY_FIELD:Ljava/lang/String; = "fs"

.field public static final KEY_FLAG:Ljava/lang/String; = "f"

.field public static final KEY_GROUP:Ljava/lang/String; = "cg"

.field public static final KEY_KEYWORD:Ljava/lang/String; = "keyword"

.field public static final KEY_LENGTH:Ljava/lang/String; = "length"

.field public static final KEY_LIMIT:Ljava/lang/String; = "limit"

.field public static final KEY_MERGER_CONTACT:Ljava/lang/String; = "mc"

.field public static final KEY_MERGER_COUNT:Ljava/lang/String; = "mcc"

.field public static final KEY_MIMIETYPE:Ljava/lang/String; = "t"

.field public static final KEY_NAME:Ljava/lang/String; = "n"

.field public static final KEY_NFS_PORTRAIT:Ljava/lang/String; = "nfs_pt"

.field public static final KEY_NO_CHANGE:Ljava/lang/String; = "same"

.field public static final KEY_OBJECT:Ljava/lang/String; = "object_key"

.field public static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field public static final KEY_OPERATION:Ljava/lang/String; = "op"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_PHOTO:Ljava/lang/String; = "p"

.field public static final KEY_PHOTO_LENGTH:Ljava/lang/String; = "photolength"

.field public static final KEY_PHOTO_OBJECT:Ljava/lang/String; = "key"

.field public static final KEY_PHOTO_PATH:Ljava/lang/String; = "path"

.field public static final KEY_PID:Ljava/lang/String; = "pid"

.field public static final KEY_PORTRAIT:Ljava/lang/String; = "pt"

.field public static final KEY_PORTRAIT_ADLER:Ljava/lang/String; = "adler"

.field public static final KEY_PORTRAIT_LENGTH:Ljava/lang/String; = "len"

.field public static final KEY_PORTRAIT_NAME:Ljava/lang/String; = "img"

.field public static final KEY_PORTRAIT_PART_ADLER:Ljava/lang/String; = "ADLER"

.field public static final KEY_PORTRAIT_PART_SID:Ljava/lang/String; = "SID"

.field public static final KEY_P_SID:Ljava/lang/String; = "psid"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_RET_LENGTH:Ljava/lang/String; = "retLength"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_STARED:Ljava/lang/String; = "st"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_S_ADD:Ljava/lang/String; = "s_add"

.field public static final KEY_S_CHECKSUM:Ljava/lang/String; = "s_checksum"

.field public static final KEY_S_DEL:Ljava/lang/String; = "s_del"

.field public static final KEY_S_DELETE:Ljava/lang/String; = "s_delete"

.field public static final KEY_S_DIFF:Ljava/lang/String; = "s_diff"

.field public static final KEY_TITLE:Ljava/lang/String; = "n"

.field public static final KEY_TOTAL:Ljava/lang/String; = "total"

.field public static final KEY_VALUE:Ljava/lang/String; = "v"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final PREPARE_KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final PREPARE_KEY_NAME:Ljava/lang/String; = "name"

.field public static final PREPARE_TYPE_ADD:Ljava/lang/String; = "ptadd"

.field public static final PREPARE_TYPE_DEL:Ljava/lang/String; = "ptdelete"

.field public static final PREPARE_TYPE_MODIF:Ljava/lang/String; = "ptmodif"

.field public static final VAL_ADD:Ljava/lang/String; = "add"

.field public static final VAL_DELETE:Ljava/lang/String; = "delete"

.field public static final VAL_RESULT_0K:I = 0x0

.field public static final VAL_UPDATE:Ljava/lang/String; = "update"


# instance fields
.field protected root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    .line 10
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toBytes()[B
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "val":Ljava/lang/String;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 108
    :goto_0
    return-object v3

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 109
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
