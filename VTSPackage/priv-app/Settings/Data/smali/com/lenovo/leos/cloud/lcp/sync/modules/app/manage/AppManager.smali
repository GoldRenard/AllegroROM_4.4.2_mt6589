.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManager;
.super Ljava/lang/Object;
.source "AppManager.java"


# virtual methods
.method public abstract queryCheksumAppList(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
