.class public interface abstract Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MsgConst"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;
    }
.end annotation


# static fields
.field public static final CATEGORY_APP:Ljava/lang/String; = "PushAppMessage"

.field public static final CATEGORY_GLOBAL:Ljava/lang/String; = "PushGlobalMessage"

.field public static final INTERVAL_SECOND_DEFAULT:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst;->INTERVAL_SECOND_DEFAULT:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x5
        0x3c
        0x78
        0x10e
        0x32a
        0x97e
        0x1c7a
    .end array-data
.end method
