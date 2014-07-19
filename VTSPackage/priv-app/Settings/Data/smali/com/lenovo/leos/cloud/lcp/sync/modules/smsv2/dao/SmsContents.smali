.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsContents;
.super Ljava/lang/Object;
.source "SmsContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsContents$SmsMessage;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsContents$SyncResultInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lenovo.leos.lecloud.provider.SyncSms"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/com.lenovo.leos.syncsms"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.lenovo.leos.syncsms"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "created DESC"

.field private static final PATH_SYNC_SMS:Ljava/lang/String; = "/syncsms"

.field private static final SCHEME:Ljava/lang/String; = "content://"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "content://com.lenovo.leos.lecloud.provider.SyncSms/syncsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsContents;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
