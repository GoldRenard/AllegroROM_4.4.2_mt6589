.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;
.super Ljava/lang/Object;
.source "MmsDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao$Visitor;
    }
.end annotation


# static fields
.field public static final TYPE_MEDIA:I = 0x2

.field public static final TYPE_SMIL:I = 0x0

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_VCF:I = 0x3


# virtual methods
.method public abstract createMms(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract doQueryLocalMmsNumber(Landroid/content/Context;)Ljava/lang/Integer;
.end method

.method public abstract doZipSelectedEntityByPduId(Landroid/content/Context;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract exists(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract getMmsEntities(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeDamagedDataAfterException(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
.end method

.method public abstract updateMms(Landroid/content/Context;JILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
