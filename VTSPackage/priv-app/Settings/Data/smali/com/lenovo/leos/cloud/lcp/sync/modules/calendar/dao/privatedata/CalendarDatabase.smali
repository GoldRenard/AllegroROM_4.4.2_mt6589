.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;
.super Ljava/lang/Object;
.source "CalendarDatabase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_USER_NAME:Ljava/lang/String; = "default"

.field private static final serialVersionUID:J = -0x6583bce3aefb267aL


# instance fields
.field public currentUser:Ljava/lang/String;

.field public tCalendar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public tEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->currentUser:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    .line 21
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "default"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->currentUser:Ljava/lang/String;

    .line 30
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    .line 32
    return-void

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->currentUser:Ljava/lang/String;

    goto :goto_0
.end method
