.class public Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;
.super Ljava/lang/Object;
.source "VTInCallScreenFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/VTInCallScreenFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTConnectionStarttime"
.end annotation


# instance fields
.field public mStarttime:J

.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTInCallScreenFlags;


# direct methods
.method public constructor <init>(Lcom/mediatek/incallui/vt/VTInCallScreenFlags;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->this$0:Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 220
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "VTConnectionStarttime"

    const-string v1, "reset..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 229
    return-void
.end method
