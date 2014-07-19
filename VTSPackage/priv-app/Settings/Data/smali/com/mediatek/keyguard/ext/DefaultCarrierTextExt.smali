.class public Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;
.super Ljava/lang/Object;
.source "DefaultCarrierTextExt.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/ICarrierTextExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedPlmnToCapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextForSimMissing(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "original"    # Ljava/lang/CharSequence;
    .param p3, "simId"    # I

    .prologue
    .line 17
    return-object p2
.end method
