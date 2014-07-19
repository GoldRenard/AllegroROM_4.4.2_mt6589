.class public Lcom/android/services/telephony/common/Call$Capabilities;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# static fields
.field public static final ADD_CALL:I = 0x10

.field public static final ALL:I = 0x7fff

.field public static final ECT:I = 0x1000

.field public static final GENERIC_CONFERENCE:I = 0x80

.field public static final HANGUP_ACTIVE_AND_ANSWER_WAITING:I = 0x800

.field public static final HANGUP_ALL:I = 0x200

.field public static final HANGUP_HOLDING:I = 0x400

.field public static final HOLD:I = 0x1

.field public static final MERGE_CALLS:I = 0x4

.field public static final MUTE:I = 0x40

.field public static final RECORD:I = 0x100

.field public static final RESPOND_VIA_TEXT:I = 0x20

.field public static final SHOW_SWAP:I = 0x4000

.field public static final SUPPORT_HOLD:I = 0x2

.field public static final SWAP_CALLS:I = 0x8

.field public static final VT_VOICE_ANSWER:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
