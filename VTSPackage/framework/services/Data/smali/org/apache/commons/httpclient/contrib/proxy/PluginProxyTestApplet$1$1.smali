.class Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1$1;
.super Ljava/lang/Object;
.source "PluginProxyTestApplet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;->actionPerformed(Ljava/awt/event/ActionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;


# direct methods
.method constructor <init>(Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1$1;->this$1:Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1$1;->this$1:Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;

    iget-object v0, v0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;->this$0:Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;

    # invokes: Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->detectProxy()V
    invoke-static {v0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->access$000(Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;)V

    .line 98
    return-void
.end method
