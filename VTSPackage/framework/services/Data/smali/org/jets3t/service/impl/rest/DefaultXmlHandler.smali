.class public Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DefaultXmlHandler.java"


# instance fields
.field private currText:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "elementText":Ljava/lang/String;
    invoke-virtual {p0, p2, v0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;->endElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;->currText:Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, p2, p4}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 35
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;->startElement(Ljava/lang/String;)V

    .line 39
    return-void
.end method
