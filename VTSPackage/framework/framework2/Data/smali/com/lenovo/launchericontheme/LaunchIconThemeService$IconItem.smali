.class Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;
.super Ljava/lang/Object;
.source "LaunchIconThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/launchericontheme/LaunchIconThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconItem"
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field private mIconId:I

.field private resName1:Ljava/lang/String;

.field private resName2:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mIconId:I

    return v0
.end method

.method public getmClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getresName1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName1:Ljava/lang/String;

    return-object v0
.end method

.method public getresName2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName2:Ljava/lang/String;

    return-object v0
.end method

.method public setIconId(I)V
    .locals 0
    .param p1, "iconid"    # I

    .prologue
    .line 658
    iput p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mIconId:I

    .line 659
    return-void
.end method

.method public setmClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "cls"    # Ljava/lang/String;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->mClass:Ljava/lang/String;

    .line 651
    return-void
.end method

.method public setresName1(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName1:Ljava/lang/String;

    .line 635
    return-void
.end method

.method public setresName2(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$IconItem;->resName2:Ljava/lang/String;

    .line 643
    return-void
.end method
