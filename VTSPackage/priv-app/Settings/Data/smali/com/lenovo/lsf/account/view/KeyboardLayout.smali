.class public Lcom/lenovo/lsf/account/view/KeyboardLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;
    }
.end annotation


# static fields
.field public static final KEYBOARD_STATE_HIDE:B = -0x2t

.field public static final KEYBOARD_STATE_INIT:B = -0x1t

.field public static final KEYBOARD_STATE_SHOW:B = -0x3t

.field private static final TAG:Ljava/lang/String; = "KeyboardLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasInit:Z

.field private mHasKeybord:Z

.field private mHeight:I

.field private mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object p1, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object p1, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 43
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHasInit:Z

    if-nez v0, :cond_5

    .line 44
    iput-boolean v2, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHasInit:Z

    .line 45
    iput p5, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHeight:I

    .line 46
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;->onKeyBoardStateChange(I)V

    .line 52
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHasInit:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHeight:I

    if-le v0, p5, :cond_2

    .line 53
    iput-boolean v2, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHasKeybord:Z

    .line 54
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;->onKeyBoardStateChange(I)V

    .line 57
    :cond_1
    const-string v0, "KeyboardLayout"

    const-string v1, "show keyboard......."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHasInit:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHasKeybord:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHeight:I

    if-ne v0, p5, :cond_4

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHasKeybord:Z

    .line 61
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;->onKeyBoardStateChange(I)V

    .line 64
    :cond_3
    const-string v0, "KeyboardLayout"

    const-string v1, "hide keyboard......."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_4
    return-void

    .line 50
    :cond_5
    iget v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHeight:I

    if-ge v0, p5, :cond_6

    move v0, p5

    :goto_1
    iput v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHeight:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mHeight:I

    goto :goto_1
.end method

.method public setOnkbdStateListener(Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/lsf/account/view/KeyboardLayout;->mListener:Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;

    .line 39
    return-void
.end method
