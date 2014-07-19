.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/SetpSync;
.super Ljava/lang/Object;
.source "SetpSync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ONGOING_C_BACKUP_AFT:I = 0x3ed

.field public static final ONGOING_C_BACKUP_NET:I = 0x3ec

.field public static final ONGOING_C_BACKUP_PRE:I = 0x3eb

.field public static final ONGOING_C_CHECKSUM_NET:I = 0x3ea

.field public static final ONGOING_C_CHECKSUM_PRE:I = 0x3e9

.field public static final ONGOING_ME_BACKUP_AFT:I = 0x3f2

.field public static final ONGOING_ME_BACKUP_NET:I = 0x3f1

.field public static final ONGOING_ME_BACKUP_PRE:I = 0x3f0

.field public static final ONGOING_ME_CHECKSUM_NET:I = 0x3ef

.field public static final ONGOING_ME_CHECKSUM_PRE:I = 0x3ee

.field public static final ONGOING_SE_BACKUP_AFT:I = 0x3f7

.field public static final ONGOING_SE_BACKUP_NET:I = 0x3f6

.field public static final ONGOING_SE_BACKUP_PRE:I = 0x3f5

.field public static final ONGOING_SE_CHECKSUM_NET:I = 0x3f4

.field public static final ONGOING_SE_CHECKSUM_PRE:I = 0x3f3

.field public static final STATUS_ONGOING:I = 0x3e8


# virtual methods
.method public abstract doAction(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract doCheckSum()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method

.method public abstract handleResult(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation
.end method
