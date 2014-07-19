.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
.super Ljava/lang/Object;
.source "SmsDaoV2.java"


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = " date DESC,body "

.field public static final DEFAULT_SORT_ORDER_LOCKED:Ljava/lang/String; = " locked desc,date DESC,body "

.field public static final MESSAGE_TYPE_ALL:I = 0x0

.field public static final MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final MESSAGE_TYPE_FAILED:I = 0x5

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_OUTBOX:I = 0x4

.field public static final MESSAGE_TYPE_QUEUED:I = 0x6

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final SMS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->SMS_URI:Landroid/net/Uri;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract asycDeleteSms(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract buildDeleteSms2Opertions(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract buildInsertSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V
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
.end method

.method public abstract buildUpdateSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V
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
.end method

.method public abstract getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract queryConversation(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryThreadIdByPhoneNumber(Ljava/lang/String;)I
.end method

.method public abstract traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z
.end method
