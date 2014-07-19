.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;
.super Ljava/lang/Object;
.source "PhotoStreamUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeItem"
.end annotation


# instance fields
.field public adler:Ljava/lang/String;

.field public contactSid:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "contactSid"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->contactSid:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->adler:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->inputStream:Ljava/io/InputStream;

    .line 115
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->contactSid:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->inputStream:Ljava/io/InputStream;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "contactSid"    # Ljava/lang/String;
    .param p2, "adler"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->contactSid:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->adler:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->inputStream:Ljava/io/InputStream;

    .line 120
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->contactSid:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->inputStream:Ljava/io/InputStream;

    .line 122
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader$MimeItem;->adler:Ljava/lang/String;

    .line 123
    return-void
.end method
