.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
.super Ljava/lang/Object;
.source "CheckSumVO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public alger:Ljava/lang/String;

.field public cid:I

.field public crc:Ljava/lang/String;

.field public photos:I

.field public sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;[Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .locals 2
    .param p0, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .param p1, "checksum"    # [Ljava/lang/String;
    .param p2, "photos"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;-><init>()V

    .line 69
    .local v0, "checksumObj":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    .line 70
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->sid:Ljava/lang/String;

    .line 72
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    .line 73
    iput p2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->photos:I

    .line 74
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "anthor"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    .line 50
    .local v0, "vo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 54
    .end local v0    # "vo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "checkSumKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{cid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",alger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",crc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",photo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->photos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
