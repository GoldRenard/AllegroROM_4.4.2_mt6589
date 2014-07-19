.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$VersionComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_OK:I = 0x0

.field public static final MATCH_OSVERSION_NO_RIGHT:I = 0x1

.field public static final MATCH_SCREEN_FAIL:I = 0x2

.field public static final VERSION:Ljava/util/regex/Pattern;


# instance fields
.field private backup:Z

.field private match:I

.field private md5:Ljava/lang/String;

.field private size:J

.field private time:J

.field private url:Ljava/lang/String;

.field public versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "([0-9]+)(\\.[0-9]{1,3}){0,2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->VERSION:Ljava/util/regex/Pattern;

    .line 144
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 57
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;-><init>()V

    .line 58
    .local v0, "ver":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    const-string v1, "backup"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "backup"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    .line 61
    :cond_0
    const-string v1, "checksum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "checksum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    .line 62
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_1
    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    .line 63
    const-string v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    :cond_1
    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->time:J

    .line 64
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    .line 65
    const-string v1, "match"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "match"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    .line 66
    const-string v1, "vc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "vc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    :cond_2
    iput v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    .line 67
    const-string v1, "vn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "vn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    .line 68
    return-object v0

    .line 61
    :cond_3
    const-string v1, ""

    goto :goto_0

    :cond_4
    move-wide v1, v3

    .line 62
    goto :goto_1

    .line 64
    :cond_5
    const-string v1, ""

    goto :goto_2

    :cond_6
    move v1, v5

    .line 65
    goto :goto_3

    .line 67
    :cond_7
    const-string v1, ""

    goto :goto_4
.end method

.method public static toVersionNumber(Ljava/lang/String;)J
    .locals 15
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    const-wide/16 v11, -0x1

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "@"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move-wide v9, v11

    .line 97
    :goto_0
    return-wide v9

    .line 81
    :cond_1
    sget-object v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->VERSION:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 82
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 83
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "group":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 86
    const-string v9, "\\."

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "ss":[Ljava/lang/String;
    array-length v9, v8

    if-lez v9, :cond_5

    .line 88
    array-length v9, v8

    if-lez v9, :cond_3

    aget-object v9, v8, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_1
    int-to-long v0, v9

    .line 89
    .local v0, "a":J
    array-length v9, v8

    if-le v9, v13, :cond_4

    aget-object v9, v8, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_2
    int-to-long v2, v9

    .line 90
    .local v2, "b":J
    array-length v9, v8

    if-le v9, v14, :cond_2

    aget-object v9, v8, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_2
    int-to-long v4, v10

    .line 92
    .local v4, "c":J
    long-to-double v9, v0

    const-wide v11, 0x408f400000000000L

    const-wide/high16 v13, 0x4000000000000000L

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v11, v2

    long-to-double v11, v11

    add-double/2addr v9, v11

    long-to-double v11, v4

    add-double/2addr v9, v11

    double-to-long v9, v9

    goto :goto_0

    .end local v0    # "a":J
    .end local v2    # "b":J
    .end local v4    # "c":J
    :cond_3
    move v9, v10

    .line 88
    goto :goto_1

    .restart local v0    # "a":J
    :cond_4
    move v9, v10

    .line 89
    goto :goto_2

    .end local v0    # "a":J
    .end local v6    # "group":Ljava/lang/String;
    .end local v8    # "ss":[Ljava/lang/String;
    :cond_5
    move-wide v9, v11

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getMatch()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->time:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isBackup()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    return v0
.end method

.method public setBackup(Z)V
    .locals 0
    .param p1, "backup"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    .line 200
    return-void
.end method

.method public setMatch(I)V
    .locals 0
    .param p1, "match"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    .line 38
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    .line 182
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->time:J

    .line 206
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    .line 170
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
