.class public Lorg/jets3t/service/utils/RestUtils$ConnManagerFactory;
.super Ljava/lang/Object;
.source "RestUtils.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/RestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schemeRegistry"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 603
    new-instance v0, Lorg/jets3t/service/utils/RestUtils$ThreadSafeConnManager;

    invoke-direct {v0, p1, p2}, Lorg/jets3t/service/utils/RestUtils$ThreadSafeConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method
