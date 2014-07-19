.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$1;
.super Ljava/lang/Object;
.source "Sms.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 256
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;-><init>()V

    .line 257
    .local v0, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;J)V

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$9(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->access$10(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;I)V

    .line 268
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 274
    new-array v0, p1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$1;->newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    move-result-object v0

    return-object v0
.end method
