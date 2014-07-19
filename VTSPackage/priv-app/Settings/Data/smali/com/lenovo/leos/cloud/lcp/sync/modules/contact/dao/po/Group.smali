.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x16c4ea3601eecfcL


# instance fields
.field public cid:I

.field public deleted:I

.field public dirty:I

.field public sourceid:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    .line 19
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    .line 23
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    .line 25
    return-void
.end method
