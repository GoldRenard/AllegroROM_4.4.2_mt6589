.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
.super Ljava/lang/Object;
.source "SmsConversation.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private count:I

.field private id:I

.field private name:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private threadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 189
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;I)V
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->id:I

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;I)V
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    return-void
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;I)V
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->pinyin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;)I
    .locals 4
    .param p1, "other"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 140
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    if-nez v2, :cond_2

    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :cond_2
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    if-lt v2, v3, :cond_0

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->compareTo(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 97
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    .line 100
    .local v0, "other":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 101
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 105
    goto :goto_0

    .line 107
    :cond_5
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 108
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 109
    goto :goto_0

    .line 111
    :cond_6
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 112
    goto :goto_0

    .line 114
    :cond_7
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 115
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_8
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_9
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    if-eq v3, v4, :cond_a

    move v1, v2

    .line 122
    goto :goto_0

    .line 125
    :cond_a
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 78
    const/16 v0, 0x1f

    .line 79
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 80
    .local v1, "result":I
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 81
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 82
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    add-int v1, v2, v4

    .line 83
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 84
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    add-int v1, v2, v3

    .line 85
    return v1

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    .line 50
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->id:I

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->pinyin:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setThreadId(I)V
    .locals 0
    .param p1, "threadId"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsConversation [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->pinyin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return-void
.end method
