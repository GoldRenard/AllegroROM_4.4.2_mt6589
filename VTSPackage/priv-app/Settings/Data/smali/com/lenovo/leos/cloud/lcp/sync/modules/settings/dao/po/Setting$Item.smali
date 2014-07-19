.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;
.super Ljava/lang/Enum;
.source "Setting.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;",
        ">;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum DATE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum DISPLAY:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field private static final synthetic ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum LANGUAGE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum LOCATION:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum PARAMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum REGULAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum RING:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum SCENE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum SPECIAL:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

.field public static final enum VOLUME:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->ACCOUNT:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "PARAMS"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->PARAMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "RING"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->RING:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "VOLUME"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->VOLUME:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "SCENE"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->SCENE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "DISPLAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->DISPLAY:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "LOCATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->LOCATION:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    .line 11
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->LANGUAGE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "DATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->DATE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "REGULAR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->REGULAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    const-string v1, "SPECIAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->SPECIAL:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    .line 9
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->ACCOUNT:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->PARAMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->RING:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->VOLUME:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->SCENE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->DISPLAY:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->LOCATION:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->LANGUAGE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->DATE:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->REGULAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->SPECIAL:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/Setting$Item;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
