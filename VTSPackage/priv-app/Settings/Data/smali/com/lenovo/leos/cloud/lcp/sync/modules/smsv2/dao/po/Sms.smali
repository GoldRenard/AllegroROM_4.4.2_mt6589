.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
.super Ljava/lang/Object;
.source "Sms.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$SmsComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final MESSAGE_TYPE_INBOX:I = 0x1


# instance fields
.field private address:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private date:J

.field private id:I

.field private locked:I

.field private read:I

.field private serviceCenter:Ljava/lang/String;

.field private status:I

.field private subject:Ljava/lang/String;

.field private threadId:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 276
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->id:I

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->threadId:I

    return-void
.end method

.method static synthetic access$10(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    return-void
.end method

.method static synthetic access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;J)V
    .locals 0

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    return-void
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    return-void
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    if-ne p0, p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 179
    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 182
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 184
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .line 185
    .local v0, "other":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 186
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 187
    goto :goto_0

    .line 189
    :cond_4
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 190
    goto :goto_0

    .line 192
    :cond_5
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 193
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 194
    goto :goto_0

    .line 196
    :cond_6
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 197
    goto :goto_0

    .line 199
    :cond_7
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    move v1, v2

    .line 200
    goto :goto_0

    .line 202
    :cond_8
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 203
    goto :goto_0

    .line 205
    :cond_9
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 206
    goto :goto_0

    .line 208
    :cond_a
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 209
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v1, v2

    .line 210
    goto :goto_0

    .line 212
    :cond_b
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 213
    goto :goto_0

    .line 215
    :cond_c
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    if-eq v3, v4, :cond_d

    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_d
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 219
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 220
    goto/16 :goto_0

    .line 222
    :cond_e
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 223
    goto/16 :goto_0

    .line 225
    :cond_f
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 226
    goto/16 :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->id:I

    return v0
.end method

.method public getLocked()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    return v0
.end method

.method public getRead()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    return v0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->threadId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 156
    const/16 v0, 0x1f

    .line 157
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 158
    .local v1, "result":I
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->id:I

    add-int/lit8 v1, v2, 0x1f

    .line 159
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 160
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 161
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 162
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    add-int v1, v2, v4

    .line 163
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    add-int v1, v2, v4

    .line 164
    mul-int/lit8 v4, v1, 0x1f

    .line 165
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    .line 164
    :goto_2
    add-int v1, v4, v2

    .line 166
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    add-int v1, v2, v4

    .line 167
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 168
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->threadId:I

    add-int v1, v2, v3

    .line 169
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    add-int v1, v2, v3

    .line 170
    return v1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .param p1, "date"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    .line 44
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->id:I

    .line 32
    return-void
.end method

.method public setLocked(I)V
    .locals 0
    .param p1, "locked"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    .line 72
    return-void
.end method

.method public setRead(I)V
    .locals 0
    .param p1, "read"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    .line 48
    return-void
.end method

.method public setServiceCenter(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceCenter"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    .line 52
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setThreadId(I)V
    .locals 0
    .param p1, "threadId"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->threadId:I

    .line 36
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "thread_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->threadId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "read:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "body:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "service_center:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "locked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 239
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->serviceCenter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->locked:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->read:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return-void
.end method
