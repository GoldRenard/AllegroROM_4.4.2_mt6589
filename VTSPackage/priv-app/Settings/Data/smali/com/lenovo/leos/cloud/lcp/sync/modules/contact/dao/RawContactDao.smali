.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
.super Ljava/lang/Object;
.source "RawContactDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;
    }
.end annotation


# static fields
.field public static final SIM_LOWER:Ljava/lang/String; = "sim"


# virtual methods
.method public abstract buildCreateContactOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildCreateFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildDeleteAllFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildDeleteGroupFieldsOpertions(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildDeleteNotGroupPortraitFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildDeleteTextFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearRawContacts()I
.end method

.method public abstract commitPrivateData()V
.end method

.method public abstract fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
.end method

.method public abstract fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V
.end method

.method public abstract getAllContactDataCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getExtendRawContactInfo(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
.end method

.method public abstract getRawContactByPhoneNo(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
.end method

.method public abstract getRawContactListByPhoneNos(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadAllPhoneNo2DisplayNameMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newCreateDataOperation(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract newCreateFieldDataOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newDeleteFieldDataOpertion(I)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newDeleteOpertion(I)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newDeleteOpertion(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newLogicalDeleteOpertion(I)Landroid/content/ContentProviderOperation;
.end method

.method public abstract newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)Landroid/content/ContentProviderOperation;
.end method

.method public varargs abstract newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;
.end method

.method public abstract queryContactCId(Ljava/lang/String;)I
.end method

.method public abstract queryContactData(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
.end method

.method public abstract queryContactSId(I)Ljava/lang/String;
.end method

.method public abstract queryLocalContactNumber()I
.end method

.method public abstract queryLocalContactNumber(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract queryRawContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
.end method

.method public abstract traverseAllContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
.end method

.method public abstract traverseAllContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;)V
.end method

.method public abstract traverseAllInvisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
.end method

.method public abstract traverseAllVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V
.end method

.method public abstract traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V
.end method

.method public abstract traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;)V
.end method

.method public abstract traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract updateContactDirty(I)I
.end method

.method public abstract updateContactGSid(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)V
.end method
