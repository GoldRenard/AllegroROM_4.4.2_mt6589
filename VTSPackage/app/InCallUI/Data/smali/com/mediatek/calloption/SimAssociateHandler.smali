.class public final Lcom/mediatek/calloption/SimAssociateHandler;
.super Landroid/os/HandlerThread;
.source "SimAssociateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;,
        Lcom/mediatek/calloption/SimAssociateHandler$ContactContentObserver;
    }
.end annotation


# static fields
.field public static final ASSOCIATE_CHANGED:Ljava/lang/String; = "com.android.contacts.associate_changed"

.field private static final MIN_MATCH:I = 0x7

.field private static final MSG_LOAD:I = 0x0

.field private static final MSG_QUIT:I = 0x1

.field private static final MSG_REFRESH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SimAssociateHandler"

.field private static sMe:Lcom/mediatek/calloption/SimAssociateHandler;


# instance fields
.field private mCacheDirty:Z

.field mContactContentObserver:Lcom/mediatek/calloption/SimAssociateHandler$ContactContentObserver;

.field protected mContext:Landroid/content/Context;

.field private mLoading:Z

.field protected mMyHandler:Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;

.field protected mSimAssociationMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 63
    const-string v1, "SimAssociateHandler"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mSimAssociationMaps:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.contacts.associate_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/mediatek/calloption/SimAssociateHandler$ContactContentObserver;

    invoke-direct {v1, p0}, Lcom/mediatek/calloption/SimAssociateHandler$ContactContentObserver;-><init>(Lcom/mediatek/calloption/SimAssociateHandler;)V

    iput-object v1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mContactContentObserver:Lcom/mediatek/calloption/SimAssociateHandler$ContactContentObserver;

    .line 67
    iget-object v1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mContactContentObserver:Lcom/mediatek/calloption/SimAssociateHandler$ContactContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    iput-boolean v4, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mCacheDirty:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calloption/SimAssociateHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/SimAssociateHandler;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mCacheDirty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/calloption/SimAssociateHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/calloption/SimAssociateHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mCacheDirty:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/calloption/SimAssociateHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/calloption/SimAssociateHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mLoading:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-class v1, Lcom/mediatek/calloption/SimAssociateHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/calloption/SimAssociateHandler;->sMe:Lcom/mediatek/calloption/SimAssociateHandler;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/mediatek/calloption/SimAssociateHandler;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimAssociateHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/calloption/SimAssociateHandler;->sMe:Lcom/mediatek/calloption/SimAssociateHandler;

    .line 81
    :cond_0
    sget-object v0, Lcom/mediatek/calloption/SimAssociateHandler;->sMe:Lcom/mediatek/calloption/SimAssociateHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public load()V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    const-string v0, "load"

    invoke-virtual {p0, v0}, Lcom/mediatek/calloption/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mCacheDirty:Z

    if-nez v0, :cond_1

    .line 108
    :cond_0
    monitor-exit p0

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mLoading:Z

    .line 111
    iget-object v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mMyHandler:Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "duplicate MSG_LOAD"

    invoke-virtual {p0, v0}, Lcom/mediatek/calloption/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 117
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 114
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mMyHandler:Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "SimAssociateHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public prepair()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 86
    new-instance v0, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;-><init>(Lcom/mediatek/calloption/SimAssociateHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mMyHandler:Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;

    .line 87
    return-void
.end method

.method public query(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "strNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mSimAssociationMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public relase()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mMyHandler:Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mMyHandler:Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/calloption/SimAssociateHandler;->mContactContentObserver:Lcom/mediatek/calloption/SimAssociateHandler$ContactContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    return-void
.end method
