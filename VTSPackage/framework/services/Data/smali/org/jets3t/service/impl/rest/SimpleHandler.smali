.class public Lorg/jets3t/service/impl/rest/SimpleHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SimpleHandler.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

.field protected parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

.field private textContent:Ljava/lang/StringBuffer;

.field private xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/SimpleHandler;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 14
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    .line 15
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->textContent:Ljava/lang/StringBuffer;

    .line 16
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    .line 17
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    .line 20
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->textContent:Ljava/lang/StringBuffer;

    .line 22
    iput-object p0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    .line 23
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->textContent:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 80
    return-void
.end method

.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 0
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 49
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v4, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->textContent:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "elementText":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 68
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->textContent:Ljava/lang/StringBuffer;

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lorg/jets3t/service/impl/rest/SimpleHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped non-existent SimpleHandler subclass\'s endElement method for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 72
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lorg/jets3t/service/impl/rest/SimpleHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to invoke SimpleHandler subclass\'s endElement method for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isChildHandler()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public returnControlToParentHandler()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->isChildHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    iput-object v1, v0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    .line 35
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-virtual {v0, p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 36
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    .line 37
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 38
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lorg/jets3t/service/impl/rest/SimpleHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring call to return control to parent handler, as this class has no parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 54
    :try_start_0
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lorg/jets3t/service/impl/rest/SimpleHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped non-existent SimpleHandler subclass\'s startElement method for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 59
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/jets3t/service/impl/rest/SimpleHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to invoke SimpleHandler subclass\'s startElement method for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 2
    .param p1, "toHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 26
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    .line 27
    iput-object p0, p1, Lorg/jets3t/service/impl/rest/SimpleHandler;->parentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    .line 28
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 29
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->xr:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/SimpleHandler;->currentHandler:Lorg/jets3t/service/impl/rest/SimpleHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 30
    return-void
.end method
