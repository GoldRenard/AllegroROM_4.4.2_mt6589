.class Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;
.super Ljava/lang/Object;
.source "PluginProxyTestApplet.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;


# direct methods
.method constructor <init>(Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;->this$0:Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 95
    new-instance v0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1$1;-><init>(Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
