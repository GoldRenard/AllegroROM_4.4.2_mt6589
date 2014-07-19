.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
.super Ljava/lang/Object;
.source "GroupDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;
    }
.end annotation


# virtual methods
.method public abstract createGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/net/Uri;
.end method

.method public varargs abstract deleteGroups([I)V
.end method

.method public abstract deleteGroupsSid(I)V
.end method

.method public abstract loadGroup(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract newClearDeletedGroups()Landroid/content/ContentProviderOperation;
.end method

.method public abstract newCreateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newDeleteOpertion(I)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newDeleteOpertion(Ljava/lang/String;)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/content/ContentProviderOperation;
.end method

.method public varargs abstract newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;
.end method

.method public abstract queryDeletedGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryGroup(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
.end method

.method public abstract queryGroupByTitle(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
.end method

.method public abstract queryGroupSid(I)Ljava/lang/String;
.end method

.method public abstract queryGroupsByClientIds(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;"
        }
    .end annotation
.end method

.method public abstract traverseAllGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V
.end method

.method public abstract traverseVisiableGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V
.end method

.method public abstract updateGroupsSid(ILjava/lang/String;)V
.end method
