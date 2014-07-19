.class public Lcom/lenovo/lsf/lds/ServerAddress;
.super Ljava/lang/Object;
.source "ServerAddress.java"


# static fields
.field private static final KEY_ADDRESS:Ljava/lang/String; = "Address"

.field private static final KEY_SERVICES:Ljava/lang/String; = "Services"

.field private static final KEY_SID:Ljava/lang/String; = "SID"

.field private static final KEY_TTL:Ljava/lang/String; = "TTL"

.field private static final SEPERATOR:Ljava/lang/String; = "%%"


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

.field private sid:Ljava/lang/String;

.field private ttl:Lcom/lenovo/lsf/common/TimeToLive;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->sid:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->ttl:Lcom/lenovo/lsf/common/TimeToLive;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->addresses:Ljava/util/List;

    .line 57
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/lenovo/lsf/lds/ServerAddress;
    .locals 10
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 69
    new-instance v4, Lcom/lenovo/lsf/lds/ServerAddress;

    invoke-direct {v4}, Lcom/lenovo/lsf/lds/ServerAddress;-><init>()V

    .line 70
    .local v4, "serverAddress":Lcom/lenovo/lsf/lds/ServerAddress;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 74
    .local v3, "reader":Ljava/io/Reader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 75
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 76
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 78
    .local v5, "xp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 79
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 80
    .local v1, "eventType":I
    :goto_0
    if-ne v1, v8, :cond_0

    .line 111
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-object v4

    .line 81
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    if-ne v1, v9, :cond_2

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Services"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    :cond_1
    :goto_2
    const/4 v6, 0x3

    if-ne v1, v6, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Services"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 83
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 84
    if-ne v1, v9, :cond_1

    .line 85
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TTL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    new-instance v6, Lcom/lenovo/lsf/common/TimeToLive;

    .line 87
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/lenovo/lsf/common/TimeToLive;-><init>(I)V

    .line 86
    invoke-virtual {v4, v6}, Lcom/lenovo/lsf/lds/ServerAddress;->setTtl(Lcom/lenovo/lsf/common/TimeToLive;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 103
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Address"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 91
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/lsf/lds/ServerAddress;->addAddress(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 106
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/lsf/lds/ServerAddress;->setSid(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public static restore(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/lds/ServerAddress;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 151
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 152
    .local v2, "share":Landroid/content/SharedPreferences;
    const-string v3, "Address"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 153
    new-instance v1, Lcom/lenovo/lsf/lds/ServerAddress;

    invoke-direct {v1}, Lcom/lenovo/lsf/lds/ServerAddress;-><init>()V

    .line 154
    .local v1, "serverAddr":Lcom/lenovo/lsf/lds/ServerAddress;
    const-string v3, "Address"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "addresses":[Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/lds/ServerAddress;->setAddresses([Ljava/lang/String;)V

    .line 156
    const-string v3, "SID"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lenovo/lsf/lds/ServerAddress;->setSid(Ljava/lang/String;)V

    .line 157
    invoke-static {v2}, Lcom/lenovo/lsf/common/TimeToLive;->restore(Landroid/content/SharedPreferences;)Lcom/lenovo/lsf/common/TimeToLive;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lenovo/lsf/lds/ServerAddress;->setTtl(Lcom/lenovo/lsf/common/TimeToLive;)V

    .line 161
    .end local v0    # "addresses":[Ljava/lang/String;
    .end local v1    # "serverAddr":Lcom/lenovo/lsf/lds/ServerAddress;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getAddress()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->addresses:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lsf/lds/ServerAddress;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
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
    .line 43
    iget-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->addresses:Ljava/util/List;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getTTL()Lcom/lenovo/lsf/common/TimeToLive;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->ttl:Lcom/lenovo/lsf/common/TimeToLive;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->ttl:Lcom/lenovo/lsf/common/TimeToLive;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lenovo/lsf/lds/ServerAddress;->ttl:Lcom/lenovo/lsf/common/TimeToLive;

    invoke-virtual {v0}, Lcom/lenovo/lsf/common/TimeToLive;->isExpired()Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 134
    .local v3, "share":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 135
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v4, "SID"

    iget-object v5, p0, Lcom/lenovo/lsf/lds/ServerAddress;->sid:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/lenovo/lsf/lds/ServerAddress;->addresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    const-string v4, "Address"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v4, p0, Lcom/lenovo/lsf/lds/ServerAddress;->ttl:Lcom/lenovo/lsf/common/TimeToLive;

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/lenovo/lsf/lds/ServerAddress;->ttl:Lcom/lenovo/lsf/common/TimeToLive;

    invoke-virtual {v4, v1}, Lcom/lenovo/lsf/common/TimeToLive;->save(Landroid/content/SharedPreferences$Editor;)V

    .line 146
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    return-void

    .line 139
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setAddresses([Ljava/lang/String;)V
    .locals 4
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 47
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 50
    return-void

    .line 47
    :cond_0
    aget-object v0, p1, v1

    .line 48
    .local v0, "addr":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/lsf/lds/ServerAddress;->addresses:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/lsf/lds/ServerAddress;->sid:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTtl(Lcom/lenovo/lsf/common/TimeToLive;)V
    .locals 0
    .param p1, "ttl"    # Lcom/lenovo/lsf/common/TimeToLive;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/lsf/lds/ServerAddress;->ttl:Lcom/lenovo/lsf/common/TimeToLive;

    .line 36
    return-void
.end method
