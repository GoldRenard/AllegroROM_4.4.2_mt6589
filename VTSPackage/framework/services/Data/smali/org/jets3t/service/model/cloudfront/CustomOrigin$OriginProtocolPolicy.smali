.class public final enum Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
.super Ljava/lang/Enum;
.source "CustomOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/model/cloudfront/CustomOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OriginProtocolPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

.field public static final enum HTTP_ONLY:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

.field public static final enum MATCH_VIEWER:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;


# instance fields
.field private final textValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    const-string v1, "HTTP_ONLY"

    const-string v2, "http-only"

    invoke-direct {v0, v1, v3, v2}, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->HTTP_ONLY:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    .line 26
    new-instance v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    const-string v1, "MATCH_VIEWER"

    const-string v2, "match-viewer"

    invoke-direct {v0, v1, v4, v2}, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->MATCH_VIEWER:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    sget-object v1, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->HTTP_ONLY:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->MATCH_VIEWER:Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->$VALUES:[Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "textValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->textValue:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static fromText(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->values()[Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    move-result-object v0

    .local v0, "arr$":[Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 40
    .local v1, "e":Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    invoke-virtual {v1}, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->toText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    return-object v1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "e":Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid OriginProtocolPolicy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    return-object v0
.end method

.method public static values()[Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->$VALUES:[Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;

    return-object v0
.end method


# virtual methods
.method public toText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/CustomOrigin$OriginProtocolPolicy;->textValue:Ljava/lang/String;

    return-object v0
.end method
