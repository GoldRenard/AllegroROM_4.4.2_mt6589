.class public final Lcom/lenovo/build/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field public static BUILD_TIME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "2013-12-11 09:59:51.463238"

    sput-object v0, Lcom/lenovo/build/BuildInfo;->BUILD_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
