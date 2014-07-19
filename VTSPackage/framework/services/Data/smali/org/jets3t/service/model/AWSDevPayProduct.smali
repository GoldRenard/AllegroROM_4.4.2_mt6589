.class public Lorg/jets3t/service/model/AWSDevPayProduct;
.super Ljava/lang/Object;
.source "AWSDevPayProduct.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x693677bea11410f5L


# instance fields
.field private productName:Ljava/lang/String;

.field private productToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "productToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lorg/jets3t/service/model/AWSDevPayProduct;->productName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/jets3t/service/model/AWSDevPayProduct;->productToken:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/jets3t/service/model/AWSDevPayProduct;->productToken:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productToken"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/AWSDevPayProduct;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lorg/jets3t/service/model/AWSDevPayProduct;->productName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static load()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-class v2, Lorg/jets3t/service/model/AWSDevPayProduct;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/jets3t/service/Constants;->DEVPAY_PRODUCTS_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    .local v0, "pin":Ljava/io/InputStream;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 90
    .local v1, "ret":Ljava/util/Vector;
    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    invoke-static {v0}, Lorg/jets3t/service/model/AWSDevPayProduct;->load(Ljava/io/InputStream;)Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    :cond_0
    return-object v1

    .line 94
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public static load(Ljava/io/InputStream;)Ljava/util/Vector;
    .locals 2
    .param p0, "pin"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 114
    :goto_0
    return-object v1

    .line 112
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 113
    .local v0, "prodProps":Ljava/util/Properties;
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 114
    invoke-static {v0}, Lorg/jets3t/service/model/AWSDevPayProduct;->load(Ljava/util/Properties;)Ljava/util/Vector;

    move-result-object v1

    goto :goto_0
.end method

.method public static load(Ljava/util/Properties;)Ljava/util/Vector;
    .locals 10
    .param p0, "prodProps"    # Ljava/util/Properties;

    .prologue
    .line 135
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 136
    .local v4, "ret":Ljava/util/Vector;
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 137
    .local v2, "propEnum":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "propName":Ljava/lang/String;
    sget-object v6, Lorg/jets3t/service/Constants;->DEVPAY_PRODUCT_NAME_PROP_SUFFIX:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sget-object v9, Lorg/jets3t/service/Constants;->DEVPAY_PRODUCT_NAME_PROP_SUFFIX:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/jets3t/service/Constants;->DEVPAY_PRODUCT_TOKEN_PROP_SUFFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "tokenPropName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "prodName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "prodToken":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 146
    new-instance v6, Lorg/jets3t/service/model/AWSDevPayProduct;

    invoke-direct {v6, v1, v0}, Lorg/jets3t/service/model/AWSDevPayProduct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0    # "prodName":Ljava/lang/String;
    .end local v1    # "prodToken":Ljava/lang/String;
    .end local v3    # "propName":Ljava/lang/String;
    .end local v5    # "tokenPropName":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 151
    return-object v4
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/jets3t/service/model/AWSDevPayProduct;->getProductName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/jets3t/service/model/AWSDevPayProduct;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jets3t/service/model/AWSDevPayProduct;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jets3t/service/model/AWSDevPayProduct;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jets3t/service/model/AWSDevPayProduct;->productToken:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jets3t/service/model/AWSDevPayProduct;->getProductName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
