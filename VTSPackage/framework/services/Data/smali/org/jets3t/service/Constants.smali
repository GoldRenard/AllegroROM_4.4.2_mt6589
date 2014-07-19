.class public Lorg/jets3t/service/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AMZ_DELETE_MARKER:Ljava/lang/String; = "x-amz-delete-marker"

.field public static final AMZ_MULTI_FACTOR_AUTH_CODE:Ljava/lang/String; = "x-amz-mfa"

.field public static final AMZ_REQUEST_ID_1:Ljava/lang/String; = "x-amz-request-id"

.field public static final AMZ_REQUEST_ID_2:Ljava/lang/String; = "x-amz-id-2"

.field public static final AMZ_SECURITY_TOKEN:Ljava/lang/String; = "x-amz-security-token"

.field public static final AMZ_VERSION_ID:Ljava/lang/String; = "x-amz-version-id"

.field public static COCKPIT_PROPERTIES_FILENAME:Ljava/lang/String; = null

.field public static DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static final DEFAULT_OBJECT_LIST_CHUNK_SIZE:J = 0x3e8L

.field public static DEFAULT_PREFERENCES_DIRECTORY:Ljava/io/File; = null

.field public static DEVPAY_PRODUCTS_PROPERTIES_FILENAME:Ljava/lang/String; = null

.field public static DEVPAY_PRODUCT_NAME_PROP_SUFFIX:Ljava/lang/String; = null

.field public static DEVPAY_PRODUCT_TOKEN_PROP_SUFFIX:Ljava/lang/String; = null

.field public static FILE_PATH_DELIM:Ljava/lang/String; = null

.field public static GS_DEFAULT_HOSTNAME:Ljava/lang/String; = null

.field public static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field public static JETS3T_IGNORE_FILENAME:Ljava/lang/String; = null

.field public static JETS3T_PROPERTIES_FILENAME:Ljava/lang/String; = null

.field public static final JETS3T_VERSION:Ljava/lang/String; = "0.9.0"

.field public static final METADATA_JETS3T_COMPRESSED:Ljava/lang/String; = "jets3t-compression"

.field public static final METADATA_JETS3T_CRYPTO_ALGORITHM:Ljava/lang/String; = "jets3t-crypto-alg"

.field public static final METADATA_JETS3T_CRYPTO_VERSION:Ljava/lang/String; = "jets3t-crypto-ver"

.field public static final METADATA_JETS3T_LOCAL_FILE_DATE:Ljava/lang/String; = "jets3t-original-file-date-iso8601"

.field public static final REQUESTER_PAYS_BUCKET_FLAG:Ljava/lang/String; = "x-amz-request-payer=requester"

.field public static final REST_HEADER_PREFIX:Ljava/lang/String; = "x-amz-"

.field public static final REST_METADATA_ALTERNATE_DATE_AMZ:Ljava/lang/String; = "x-amz-date"

.field public static final REST_METADATA_ALTERNATE_DATE_GOOG:Ljava/lang/String; = "x-goog-date"

.field public static final REST_METADATA_PREFIX:Ljava/lang/String; = "x-amz-meta-"

.field public static S3_DEFAULT_HOSTNAME:Ljava/lang/String; = null

.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://s3.amazonaws.com/doc/2006-03-01/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-string v0, "s3.amazonaws.com"

    sput-object v0, Lorg/jets3t/service/Constants;->S3_DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 37
    const-string v0, "commondatastorage.googleapis.com"

    sput-object v0, Lorg/jets3t/service/Constants;->GS_DEFAULT_HOSTNAME:Ljava/lang/String;

    .line 47
    const-string v0, "jets3t.properties"

    sput-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    .line 52
    const-string v0, "jets3t-cockpit.properties"

    sput-object v0, Lorg/jets3t/service/Constants;->COCKPIT_PROPERTIES_FILENAME:Ljava/lang/String;

    .line 56
    const-string v0, "devpay_products.properties"

    sput-object v0, Lorg/jets3t/service/Constants;->DEVPAY_PRODUCTS_PROPERTIES_FILENAME:Ljava/lang/String;

    .line 60
    const-string v0, ".name"

    sput-object v0, Lorg/jets3t/service/Constants;->DEVPAY_PRODUCT_NAME_PROP_SUFFIX:Ljava/lang/String;

    .line 64
    const-string v0, ".token"

    sput-object v0, Lorg/jets3t/service/Constants;->DEVPAY_PRODUCT_TOKEN_PROP_SUFFIX:Ljava/lang/String;

    .line 70
    const-string v0, ".jets3t-ignore"

    sput-object v0, Lorg/jets3t/service/Constants;->JETS3T_IGNORE_FILENAME:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.jets3t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/Constants;->DEFAULT_PREFERENCES_DIRECTORY:Ljava/io/File;

    .line 81
    const-string v0, "/"

    sput-object v0, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    .line 86
    const-string v0, "UTF-8"

    sput-object v0, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
