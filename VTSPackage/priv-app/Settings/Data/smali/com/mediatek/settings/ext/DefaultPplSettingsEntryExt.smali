.class public Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;
.super Landroid/content/ContextWrapper;
.source "DefaultPplSettingsEntryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IPplSettingsEntryExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "PPL/PplSettingsEntryExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public addPplPrf(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 18
    const-string v0, "PPL/PplSettingsEntryExt"

    const-string v1, "addPplPrf() default"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public enablerPause()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "PPL/PplSettingsEntryExt"

    const-string v1, "enablerPause() default"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public enablerResume()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "PPL/PplSettingsEntryExt"

    const-string v1, "enablerResume() default"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
