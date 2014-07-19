.class Lcom/android/settings/wifi/BaseBR$ResponseResult;
.super Ljava/lang/Object;
.source "BaseBR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/BaseBR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseResult"
.end annotation


# static fields
.field public static final FAIL:I = 0x0

.field public static final SUCCESS:I = 0x1


# instance fields
.field private mReadCount:I

.field private mRespBuff:[B


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "respBuff"    # [B
    .param p2, "readCount"    # I

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mReadCount:I

    .line 227
    iput-object p1, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    .line 228
    iput p2, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mReadCount:I

    .line 229
    return-void
.end method

.method private byteArrayToInt([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 220
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 221
    .local v1, "shift":I
    add-int v3, v0, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method


# virtual methods
.method getErrMsg()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 248
    const-string v0, ""

    .line 249
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    array-length v1, v1

    if-lt v1, v3, :cond_0

    .line 250
    new-instance v0, Ljava/lang/String;

    .end local v0    # "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    iget v2, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mReadCount:I

    add-int/lit8 v2, v2, -0x8

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 252
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getErrNo()I
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/BaseBR$ResponseResult;->byteArrayToInt([BI)I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getResult()I
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR$ResponseResult;->mRespBuff:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/BaseBR$ResponseResult;->byteArrayToInt([BI)I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
