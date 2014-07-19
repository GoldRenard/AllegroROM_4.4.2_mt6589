.class public Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;
.super Ljava/lang/Object;
.source "DefaultWifiApDialogExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiApDialogExt;


# static fields
.field private static final KEY_PROP_WPS2_SUPPORT:Ljava/lang/String; = "persist.radio.wifi.wps2support"

.field private static final TAG:Ljava/lang/String; = "DefaultWifiApDialogExt"

.field private static final WPA2_INDEX:I = 0x2


# instance fields
.field private mWps2Test:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecurityType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 33
    move v0, p1

    .line 34
    .local v0, "security":I
    iget-boolean v1, p0, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;->mWps2Test:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 35
    add-int/lit8 v0, p1, 0x1

    .line 37
    :cond_0
    return v0
.end method

.method public getSelection(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 26
    move v0, p1

    .line 27
    .local v0, "selection":I
    iget-boolean v1, p0, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;->mWps2Test:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 28
    add-int/lit8 v0, p1, -0x1

    .line 30
    :cond_0
    return v0
.end method

.method public setAdapter(Landroid/content/Context;Landroid/widget/Spinner;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "arrayId"    # I

    .prologue
    .line 15
    const-string v2, "true"

    const-string v3, "persist.radio.wifi.wps2support"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;->mWps2Test:Z

    .line 16
    iget-boolean v2, p0, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;->mWps2Test:Z

    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "setUpArray":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 19
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 20
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 21
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 24
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "setUpArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method
