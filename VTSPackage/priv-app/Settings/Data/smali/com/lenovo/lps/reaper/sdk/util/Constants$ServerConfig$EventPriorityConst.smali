.class public interface abstract Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$EventPriorityConst;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventPriorityConst"
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "EventPriority"

.field public static final DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIORITY_DEFAULT:I

    sput v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$EventPriorityConst;->DEFAULT:I

    return-void
.end method
