.class final Lcom/lenovo/systemtheme/ThemeHashMap$1;
.super Ljava/lang/Object;
.source "ThemeHashMap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/systemtheme/ThemeHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lenovo/systemtheme/ThemeHashMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/systemtheme/ThemeHashMap;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 23
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .restart local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v0, Lcom/lenovo/systemtheme/ThemeHashMap;

    invoke-direct {v0, v1}, Lcom/lenovo/systemtheme/ThemeHashMap;-><init>(Ljava/util/HashMap;)V

    .line 28
    .local v0, "map":Lcom/lenovo/systemtheme/ThemeHashMap;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/lenovo/systemtheme/ThemeHashMap$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/systemtheme/ThemeHashMap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/systemtheme/ThemeHashMap;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 34
    new-array v0, p1, [Lcom/lenovo/systemtheme/ThemeHashMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/lenovo/systemtheme/ThemeHashMap$1;->newArray(I)[Lcom/lenovo/systemtheme/ThemeHashMap;

    move-result-object v0

    return-object v0
.end method
