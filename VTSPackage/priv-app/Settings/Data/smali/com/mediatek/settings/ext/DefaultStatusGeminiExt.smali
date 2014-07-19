.class public Lcom/mediatek/settings/ext/DefaultStatusGeminiExt;
.super Ljava/lang/Object;
.source "DefaultStatusGeminiExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IStatusGeminiExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultStatusGeminiExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "netWorkTypeName"    # Ljava/lang/String;

    .prologue
    .line 21
    return-object p1
.end method

.method public initUI(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 17
    const-string v0, "DefaultStatusGeminiExt"

    const-string v1, "default launched"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method
