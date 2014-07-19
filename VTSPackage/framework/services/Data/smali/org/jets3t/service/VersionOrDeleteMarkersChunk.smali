.class public Lorg/jets3t/service/VersionOrDeleteMarkersChunk;
.super Ljava/lang/Object;
.source "VersionOrDeleteMarkersChunk.java"


# instance fields
.field private commonPrefixes:[Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private items:[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

.field private nextKeyMarker:Ljava/lang/String;

.field private nextVersionIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "items"    # [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    .param p4, "commonPrefixes"    # [Ljava/lang/String;
    .param p5, "nextKeyMarker"    # Ljava/lang/String;
    .param p6, "nextVersionIdMarker"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->prefix:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->delimiter:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->items:[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    .line 27
    iput-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->commonPrefixes:[Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextKeyMarker:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextVersionIdMarker:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->prefix:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->delimiter:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->items:[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    .line 38
    iput-object p4, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->commonPrefixes:[Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextKeyMarker:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextVersionIdMarker:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->commonPrefixes:[Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->items:[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    array-length v0, v0

    return v0
.end method

.method public getItems()[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->items:[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    return-object v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextVersionIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextVersionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isListingComplete()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextKeyMarker:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jets3t/service/VersionOrDeleteMarkersChunk;->nextVersionIdMarker:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
