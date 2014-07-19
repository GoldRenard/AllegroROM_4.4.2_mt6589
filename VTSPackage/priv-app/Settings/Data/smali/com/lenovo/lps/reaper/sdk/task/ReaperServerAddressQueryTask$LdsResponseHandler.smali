.class Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ReaperServerAddressQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LdsResponseHandler"
.end annotation


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private builder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;

.field private ttl:J


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->this$0:Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 216
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "Address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->addresses:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string v0, "TTL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->ttl:J

    goto :goto_0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->ttl:J

    return-wide v0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->addresses:Ljava/util/List;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->builder:Ljava/lang/StringBuilder;

    .line 244
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 256
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 257
    return-void
.end method
