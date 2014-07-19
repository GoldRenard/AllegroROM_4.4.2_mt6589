.class public Lcom/android/phone/common/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final durationInSec:I

.field public final mSimId:I

.field public final mVtCall:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "presentation"    # I
    .param p5, "callType"    # I
    .param p6, "timestamp"    # J
    .param p8, "durationInMillis"    # J

    .prologue
    const/4 v2, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 96
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 97
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 98
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 99
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 100
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 101
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->mSimId:I

    .line 102
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->mVtCall:I

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "presentation"    # I
    .param p5, "callType"    # I
    .param p6, "timestamp"    # J
    .param p8, "durationInMillis"    # J
    .param p10, "simId"    # I

    .prologue
    .line 113
    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "presentation"    # I
    .param p5, "callType"    # I
    .param p6, "timestamp"    # J
    .param p8, "durationInMillis"    # J
    .param p10, "simId"    # I
    .param p11, "vtCall"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 127
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 128
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 129
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 130
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 131
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 132
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->mSimId:I

    .line 133
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->mVtCall:I

    .line 134
    return-void
.end method
