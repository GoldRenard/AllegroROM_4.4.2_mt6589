.class public Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;
.super Ljava/lang/Object;
.source "AnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncomingCallMenuState"
.end annotation


# static fields
.field public static sCanHangupActiveAndAnswerWaiting:Z

.field public static sCanVTVoiceAnswer:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 727
    sput-boolean v0, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    .line 728
    sput-boolean v0, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    .line 729
    return-void
.end method
