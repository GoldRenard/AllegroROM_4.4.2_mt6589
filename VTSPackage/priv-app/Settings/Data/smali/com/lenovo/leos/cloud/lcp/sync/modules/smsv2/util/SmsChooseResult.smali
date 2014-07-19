.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;
.super Ljava/lang/Object;
.source "SmsChooseResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allSmsListSize:I

.field private endTime:Ljava/lang/Long;

.field private isSelectedAll:Ljava/lang/Boolean;

.field private keyword:Ljava/lang/String;

.field private smsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/List;I)V
    .locals 1
    .param p1, "selectedAll"    # Z
    .param p2, "startTime"    # Ljava/lang/Long;
    .param p3, "endTime"    # Ljava/lang/Long;
    .param p5, "allSmsListSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p4, "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->isSelectedAll:Ljava/lang/Boolean;

    .line 25
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->startTime:Ljava/lang/Long;

    .line 26
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->endTime:Ljava/lang/Long;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->smsList:Ljava/util/ArrayList;

    .line 28
    iput p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->allSmsListSize:I

    .line 29
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p1, "selectedAll"    # Z
    .param p2, "startTime"    # Ljava/lang/Long;
    .param p3, "endTime"    # Ljava/lang/Long;
    .param p5, "keyword"    # Ljava/lang/String;
    .param p6, "allSmsListSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->isSelectedAll:Ljava/lang/Boolean;

    .line 34
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->startTime:Ljava/lang/Long;

    .line 35
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->endTime:Ljava/lang/Long;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->smsList:Ljava/util/ArrayList;

    .line 37
    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->keyword:Ljava/lang/String;

    .line 38
    iput p6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->allSmsListSize:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getAllSmsListSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->allSmsListSize:I

    return v0
.end method

.method public getEndTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->endTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->smsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public isSelectedAll()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->isSelectedAll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAllSmsListSize(I)V
    .locals 0
    .param p1, "allSmsListSize"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->allSmsListSize:I

    .line 47
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->keyword:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->isSelectedAll:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->startTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->endTime:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->smsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->keyword:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 118
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    :goto_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->allSmsListSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->startTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->endTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
