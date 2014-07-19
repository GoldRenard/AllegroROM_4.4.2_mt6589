.class public final enum Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;
.super Ljava/lang/Enum;
.source "RestStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/httpclient/RestStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "HTTP_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

.field public static final enum DELETE:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

.field public static final enum GET:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

.field public static final enum HEAD:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

.field public static final enum POST:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

.field public static final enum PUT:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->PUT:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    new-instance v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->POST:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    new-instance v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v4}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->HEAD:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    new-instance v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    const-string v1, "GET"

    invoke-direct {v0, v1, v5}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->GET:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    new-instance v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->DELETE:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->PUT:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->POST:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->HEAD:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->GET:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->DELETE:Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->$VALUES:[Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    return-object v0
.end method

.method public static values()[Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;->$VALUES:[Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/impl/rest/httpclient/RestStorageService$HTTP_METHOD;

    return-object v0
.end method
