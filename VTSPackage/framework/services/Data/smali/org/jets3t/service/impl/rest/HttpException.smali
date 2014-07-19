.class public Lorg/jets3t/service/impl/rest/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = 0xf94ad606f7dd4d8L


# instance fields
.field private responseCode:I

.field private responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "responseMessage"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/jets3t/service/impl/rest/HttpException;->responseCode:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/HttpException;->responseMessage:Ljava/lang/String;

    .line 35
    iput p1, p0, Lorg/jets3t/service/impl/rest/HttpException;->responseCode:I

    .line 36
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/HttpException;->responseMessage:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/jets3t/service/impl/rest/HttpException;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/HttpException;->responseMessage:Ljava/lang/String;

    return-object v0
.end method
