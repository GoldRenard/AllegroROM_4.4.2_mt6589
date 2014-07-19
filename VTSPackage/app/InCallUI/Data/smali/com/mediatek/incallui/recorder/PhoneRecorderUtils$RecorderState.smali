.class public final Lcom/mediatek/incallui/recorder/PhoneRecorderUtils$RecorderState;
.super Ljava/lang/Object;
.source "PhoneRecorderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecorderState"
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final RECORDING_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils$RecorderState;->this$0:Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
