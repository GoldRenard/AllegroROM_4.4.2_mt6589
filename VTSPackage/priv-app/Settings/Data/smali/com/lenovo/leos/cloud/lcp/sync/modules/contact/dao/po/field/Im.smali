.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
.source "Im.java"


# static fields
.field public static final FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HOME:Ljava/lang/String; = "HOME"

.field public static final FLAG_OTHER:Ljava/lang/String; = "OTHER"

.field public static final FLAG_WORK:Ljava/lang/String; = "WORK"

.field public static final PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_AIM:Ljava/lang/String; = "AIM"

.field public static final PROTOCOL_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final PROTOCOL_GOOGLE_TALK:Ljava/lang/String; = "GOOGLE_TALK"

.field public static final PROTOCOL_ICQ:Ljava/lang/String; = "ICQ"

.field public static final PROTOCOL_JABBER:Ljava/lang/String; = "JABBER"

.field public static final PROTOCOL_MSN:Ljava/lang/String; = "MSN"

.field public static final PROTOCOL_NETMEETING:Ljava/lang/String; = "NETMEETING"

.field public static final PROTOCOL_QQ:Ljava/lang/String; = "QQ"

.field public static final PROTOCOL_SKYPE:Ljava/lang/String; = "SKYPE"

.field public static final PROTOCOL_YAHOO:Ljava/lang/String; = "YAHOO"

.field private static final serialVersionUID:J = -0x18cd59d7281b361L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    .line 25
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "CUSTOM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "HOME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "WORK"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "OTHER"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    .line 33
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "CUSTOM"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "MSN"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "YAHOO"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "SKYPE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "GOOGLE_TALK"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "NETMEETING"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;-><init>()V

    .line 46
    const-string v0, "IM"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method protected fetchFlagFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 3
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "typeId":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_2

    .line 69
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data6:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "typeId":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->getNullFlagValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    .line 82
    :cond_1
    return-void

    .line 71
    .restart local v1    # "typeId":I
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->getFlagName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v1    # "typeId":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected flagToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 3
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 50
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->getV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, "typeId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 52
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data6:Ljava/lang/String;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getFlagName(I)Ljava/lang/String;
    .locals 2
    .param p1, "typeId"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->getK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getNullFlagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "QQ"

    return-object v0
.end method

.method protected getTypeId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "typeStr"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Im;->PROTOCOL_2_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->getV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
