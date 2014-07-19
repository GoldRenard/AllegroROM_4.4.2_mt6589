.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;
.super Ljava/lang/Object;
.source "CalllogDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;
    }
.end annotation


# virtual methods
.method public abstract createCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)Ljava/lang/String;
.end method

.method public abstract delCalllog(Landroid/content/Context;I)V
.end method

.method public abstract getCalllogCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract queryLocalCalllogNumber(Landroid/content/Context;)Ljava/lang/Integer;
.end method

.method public abstract traverseAllCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation
.end method

.method public abstract traverseCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract updateCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)V
.end method
