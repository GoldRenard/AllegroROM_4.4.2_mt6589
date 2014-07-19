.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/HttpProvider;
.super Ljava/lang/Object;
.source "HttpProvider.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# virtual methods
.method public abstract GET(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract GETB(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract POST(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setProgressStatus(I)V
.end method
