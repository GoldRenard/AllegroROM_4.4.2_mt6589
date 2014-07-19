.class public Lcom/android/services/telephony/common/Call$State;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x2

.field public static final CALL_WAITING:I = 0x4

.field public static final CONFERENCED:I = 0xa

.field public static final DIALING:I = 0x5

.field public static final DISCONNECTED:I = 0x9

.field public static final DISCONNECTING:I = 0x8

.field public static final IDLE:I = 0x1

.field public static final INCOMING:I = 0x3

.field public static final INVALID:I = 0x0

.field public static final ONHOLD:I = 0x7

.field public static final REDIALING:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnected(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 57
    packed-switch p0, :pswitch_data_0

    .line 68
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 65
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isDialing(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 72
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
