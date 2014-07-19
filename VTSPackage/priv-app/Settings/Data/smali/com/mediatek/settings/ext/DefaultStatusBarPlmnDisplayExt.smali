.class public Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;
.super Landroid/content/ContextWrapper;
.source "DefaultStatusBarPlmnDisplayExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;


# static fields
.field static final TAG:Ljava/lang/String; = "DefaultStatusBarPlmnDisplayExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "DefaultStatusBarPlmnDisplayExt"

    const-string v1, "Into DefaultStatusBarPlmnPlugin"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method


# virtual methods
.method public createCheckBox(Landroid/preference/PreferenceCategory;I)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/PreferenceCategory;
    .param p2, "j"    # I

    .prologue
    .line 17
    const-string v0, "DefaultStatusBarPlmnDisplayExt"

    const-string v1, "Into Default createCheckBox"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method
