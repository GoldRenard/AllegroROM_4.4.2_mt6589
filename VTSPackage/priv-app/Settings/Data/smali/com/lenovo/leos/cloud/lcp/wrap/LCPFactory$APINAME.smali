.class public final enum Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
.super Ljava/lang/Enum;
.source "LCPFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APINAME"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/leos/cloud/lcp/wrap/LCPFactory$APINAME;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
