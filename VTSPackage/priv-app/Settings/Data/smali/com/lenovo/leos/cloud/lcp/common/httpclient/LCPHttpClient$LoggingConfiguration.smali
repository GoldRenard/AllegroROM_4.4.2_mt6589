.class final Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "LCPHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    .line 164
    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->level:I

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;)Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->isLoggable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V

    return-void
.end method

.method private isLoggable()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->level:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private println(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 178
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->level:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
