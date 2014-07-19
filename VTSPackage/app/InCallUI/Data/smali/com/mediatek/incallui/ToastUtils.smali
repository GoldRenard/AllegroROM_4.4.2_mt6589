.class public Lcom/mediatek/incallui/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sInstance:Lcom/mediatek/incallui/ToastUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/incallui/ToastUtils;->sInstance:Lcom/mediatek/incallui/ToastUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/ToastUtils;->mContext:Landroid/content/Context;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/ToastUtils;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/mediatek/incallui/ToastUtils;->sInstance:Lcom/mediatek/incallui/ToastUtils;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/mediatek/incallui/ToastUtils;

    invoke-direct {v0}, Lcom/mediatek/incallui/ToastUtils;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/ToastUtils;->sInstance:Lcom/mediatek/incallui/ToastUtils;

    .line 17
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/ToastUtils;->sInstance:Lcom/mediatek/incallui/ToastUtils;

    return-object v0
.end method


# virtual methods
.method public initContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mediatek/incallui/ToastUtils;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method
