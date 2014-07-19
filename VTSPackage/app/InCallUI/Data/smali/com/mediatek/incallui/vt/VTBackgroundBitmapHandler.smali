.class public Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;
.super Ljava/lang/Object;
.source "VTBackgroundBitmapHandler.java"


# static fields
.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_peer_video_default"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_peer_video_userselect"

.field public static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field public static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceUpdateBitmapBySetting()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;->recycle()V

    .line 74
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    return-void
.end method

.method public updateBitmapBySetting()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    goto :goto_0
.end method
