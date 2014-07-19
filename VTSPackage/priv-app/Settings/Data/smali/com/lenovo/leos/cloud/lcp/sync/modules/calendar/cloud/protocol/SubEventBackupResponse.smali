.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;
.source "SubEventBackupResponse.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonResp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
