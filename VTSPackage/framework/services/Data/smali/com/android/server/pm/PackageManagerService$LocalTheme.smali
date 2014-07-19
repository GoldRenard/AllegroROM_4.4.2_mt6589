.class Lcom/android/server/pm/PackageManagerService$LocalTheme;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalTheme"
.end annotation


# instance fields
.field isZip:Z

.field strFile:Ljava/lang/String;

.field strPackage:Ljava/lang/String;

.field strPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .prologue
    .line 11035
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$LocalTheme;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
