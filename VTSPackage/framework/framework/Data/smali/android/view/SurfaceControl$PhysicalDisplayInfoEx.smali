.class public final Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalDisplayInfoEx"
.end annotation


# instance fields
.field public subtype:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    return-void
.end method


# virtual methods
.method public equals(Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    .prologue
    .line 471
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;->subtype:I

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;->subtype:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 467
    instance-of v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhysicalDisplayInfoEx{subtype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;->subtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
