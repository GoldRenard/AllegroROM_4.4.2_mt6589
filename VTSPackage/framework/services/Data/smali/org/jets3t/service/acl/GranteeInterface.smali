.class public interface abstract Lorg/jets3t/service/acl/GranteeInterface;
.super Ljava/lang/Object;
.source "GranteeInterface.java"


# virtual methods
.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract setIdentifier(Ljava/lang/String;)V
.end method

.method public abstract toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation
.end method

.method public abstract toXml()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation
.end method
