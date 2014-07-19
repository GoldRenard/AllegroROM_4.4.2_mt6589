.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$Mycomparator;
.super Ljava/lang/Object;
.source "FileReadFinishMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mycomparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7da65168604e2cb4L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;

    .local v0, "p1":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
    move-object v1, p2

    .line 126
    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;

    .line 128
    .local v1, "p2":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    if-nez p2, :cond_2

    move v2, v3

    .line 132
    goto :goto_0

    .line 135
    :cond_2
    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->time:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage;->time:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
