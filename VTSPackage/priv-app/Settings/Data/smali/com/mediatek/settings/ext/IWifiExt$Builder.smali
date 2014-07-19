.class public Lcom/mediatek/settings/ext/IWifiExt$Builder;
.super Ljava/lang/Object;
.source "IWifiExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ext/IWifiExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEdit:Z

.field private mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkId:I

.field private mSecurity:I

.field private mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public getEdit()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mNetworkId:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSecurity:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mLists:Ljava/util/List;

    return-object v0
.end method

.method public setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    .line 182
    return-object p0
.end method

.method public setNetworkId(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mNetworkId:I

    .line 173
    return-object p0
.end method

.method public setSecurity(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "security"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSecurity:I

    .line 165
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSsid:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setViews(Ljava/util/List;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/mediatek/settings/ext/IWifiExt$Builder;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mLists:Ljava/util/List;

    .line 190
    return-object p0
.end method
