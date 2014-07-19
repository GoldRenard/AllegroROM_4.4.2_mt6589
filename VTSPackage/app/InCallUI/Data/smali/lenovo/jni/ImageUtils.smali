.class public final Llenovo/jni/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "InCallBlur"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "degree"    # I

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "dest":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 16
    .local v2, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 18
    .local v1, "h":I
    if-gtz p1, :cond_0

    .line 25
    .end local p0    # "src":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 22
    .restart local p0    # "src":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 23
    invoke-static {p0, v0, v2, v1, p1}, Llenovo/jni/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V

    move-object p0, v0

    .line 25
    goto :goto_0
.end method

.method private static native fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V
.end method
