.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;
.super Ljava/lang/Object;
.source "MmsProtocol.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;


# static fields
.field public static final KEY_ABST:Ljava/lang/String; = "abst"

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_ADD_NUM:Ljava/lang/String; = "add_num"

.field public static final KEY_BODY:Ljava/lang/String; = "body"

.field public static final KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_C_ADD:Ljava/lang/String; = "c_add"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_DIFF:Ljava/lang/String; = "diff"

.field public static final KEY_ERROR:Ljava/lang/String; = "error"

.field public static final KEY_LOCKED:Ljava/lang/String; = "locked"

.field public static final KEY_MESSAGE_CLASS:Ljava/lang/String; = "message_class"

.field public static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final KEY_MONTH:Ljava/lang/String; = "month"

.field public static final KEY_NUMS:Ljava/lang/String; = "nums"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_PHONELIST:Ljava/lang/String; = "phonelist"

.field public static final KEY_PID:Ljava/lang/String; = "pid"

.field public static final KEY_READ:Ljava/lang/String; = "read"

.field public static final KEY_RELATED:Ljava/lang/String; = "related"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_SERVICE_CENTER:Ljava/lang/String; = "service_center"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_SUBJECT:Ljava/lang/String; = "subject"

.field public static final KEY_S_ADD:Ljava/lang/String; = "s_add"

.field public static final KEY_TIMESUM:Ljava/lang/String; = "timesum"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_UPDATE_NUM:Ljava/lang/String; = "update_num"

.field public static final LOCAL_CATOGARY:Ljava/lang/String; = "local_catogary"

.field public static final LOCAL_NUMBER:Ljava/lang/String; = "local_number"

.field public static final LOCAL_TIME:Ljava/lang/String; = "local_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toBytes()[B
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "val":Ljava/lang/String;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    :goto_0
    return-object v3

    .line 54
    :catch_0
    move-exception v0

    .line 56
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

    .line 57
    :catch_1
    move-exception v1

    .line 58
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
