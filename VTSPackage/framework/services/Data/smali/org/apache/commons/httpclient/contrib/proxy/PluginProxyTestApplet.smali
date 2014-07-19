.class public Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;
.super Ljavax/swing/JApplet;
.source "PluginProxyTestApplet.java"


# instance fields
.field private grid:Ljavax/swing/JPanel;

.field private hostLabel:Ljavax/swing/JLabel;

.field private portLabel:Ljavax/swing/JLabel;

.field private final urlTextField:Ljavax/swing/JTextField;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    .line 62
    new-instance v0, Ljavax/swing/JTextField;

    invoke-direct {v0}, Ljavax/swing/JTextField;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->urlTextField:Ljavax/swing/JTextField;

    .line 63
    iput-object v1, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    .line 64
    iput-object v1, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->hostLabel:Ljavax/swing/JLabel;

    .line 65
    iput-object v1, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->portLabel:Ljavax/swing/JLabel;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->detectProxy()V

    return-void
.end method

.method private detectProxy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 134
    iget-object v4, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->urlTextField:Ljavax/swing/JTextField;

    invoke-virtual {v4}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "urlString":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    :cond_0
    invoke-super {p0}, Ljavax/swing/JApplet;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v4

    const-string v5, "URL can\'t be empty"

    const-string v6, "Missing URL"

    invoke-static {v4, v5, v6, v7}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 169
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "url":Ljava/net/URL;
    invoke-static {v2}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->detectProxy(Ljava/net/URL;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 148
    .local v1, "hostInfo":Lorg/apache/http/HttpHost;
    if-eqz v1, :cond_3

    .line 149
    iget-object v4, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->hostLabel:Ljavax/swing/JLabel;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->portLabel:Ljavax/swing/JLabel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 155
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    invoke-virtual {v4}, Ljavax/swing/JPanel;->validate()V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    .end local v1    # "hostInfo":Lorg/apache/http/HttpHost;
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Proxy Detection Failed"

    invoke-static {v4, v5, v6, v7}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 161
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v0    # "e":Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;
    .restart local v1    # "hostInfo":Lorg/apache/http/HttpHost;
    .restart local v2    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->hostLabel:Ljavax/swing/JLabel;

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->portLabel:Ljavax/swing/JLabel;

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 162
    .end local v1    # "hostInfo":Lorg/apache/http/HttpHost;
    .end local v2    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unexpected Exception"

    invoke-static {v4, v5, v6, v7}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private getHeaderLabel(Ljava/lang/String;)Ljavax/swing/JLabel;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljavax/swing/JLabel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><u><b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b></u></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "result":Ljavax/swing/JLabel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 124
    return-object v0
.end method

.method private getLabel(Ljava/lang/String;)Ljavax/swing/JLabel;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "result":Ljavax/swing/JLabel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 130
    return-object v0
.end method

.method private getPanel(Ljava/awt/LayoutManager;)Ljavax/swing/JPanel;
    .locals 1
    .param p1, "layout"    # Ljava/awt/LayoutManager;

    .prologue
    .line 117
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0, p1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 118
    .local v0, "result":Ljavax/swing/JPanel;
    return-object v0
.end method


# virtual methods
.method public getProxyHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 172
    move-object v2, p1

    .line 174
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "url":Ljava/net/URL;
    invoke-static {v3}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->detectProxy(Ljava/net/URL;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 176
    .local v1, "hostInfo":Lorg/apache/http/HttpHost;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    .end local v1    # "hostInfo":Lorg/apache/http/HttpHost;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getProxyPort(Ljava/lang/String;)I
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 186
    const/16 v2, 0x50

    .line 188
    .local v2, "result":I
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .local v3, "url":Ljava/net/URL;
    invoke-static {v3}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->detectProxy(Ljava/net/URL;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 190
    .local v1, "hostInfo":Lorg/apache/http/HttpHost;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 196
    .end local v1    # "hostInfo":Lorg/apache/http/HttpHost;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return v2

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    .line 75
    .local v2, "content":Ljava/awt/Container;
    new-instance v6, Ljava/awt/BorderLayout;

    invoke-direct {v6}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v2, v6}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 78
    new-instance v6, Ljava/awt/GridLayout;

    const/4 v7, 0x3

    invoke-direct {v6, v8, v7, v8, v8}, Ljava/awt/GridLayout;-><init>(IIII)V

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getPanel(Ljava/awt/LayoutManager;)Ljavax/swing/JPanel;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    .line 79
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    const-string v7, "URL"

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getHeaderLabel(Ljava/lang/String;)Ljavax/swing/JLabel;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 80
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    const-string v7, "Proxy Host"

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getHeaderLabel(Ljava/lang/String;)Ljavax/swing/JLabel;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 81
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    const-string v7, "Proxy Port"

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getHeaderLabel(Ljava/lang/String;)Ljavax/swing/JLabel;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 82
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    iget-object v7, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->urlTextField:Ljavax/swing/JTextField;

    invoke-virtual {v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 83
    const-string v6, ""

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getLabel(Ljava/lang/String;)Ljavax/swing/JLabel;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->hostLabel:Ljavax/swing/JLabel;

    .line 84
    const-string v6, ""

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getLabel(Ljava/lang/String;)Ljavax/swing/JLabel;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->portLabel:Ljavax/swing/JLabel;

    .line 85
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    iget-object v7, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->hostLabel:Ljavax/swing/JLabel;

    invoke-virtual {v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 86
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    iget-object v7, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->portLabel:Ljavax/swing/JLabel;

    invoke-virtual {v6, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 87
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    invoke-virtual {v6}, Ljavax/swing/JPanel;->validate()V

    .line 88
    iget-object v6, p0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->grid:Ljavax/swing/JPanel;

    const-string v7, "Center"

    invoke-virtual {v2, v6, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 91
    new-instance v6, Ljava/awt/FlowLayout;

    invoke-direct {v6}, Ljava/awt/FlowLayout;-><init>()V

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getPanel(Ljava/awt/LayoutManager;)Ljavax/swing/JPanel;

    move-result-object v1

    .line 92
    .local v1, "buttonPanel":Ljavax/swing/JPanel;
    new-instance v0, Ljavax/swing/JButton;

    const-string v6, "Detect Proxy"

    invoke-direct {v0, v6}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "button":Ljavax/swing/JButton;
    new-instance v6, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;

    invoke-direct {v6, p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet$1;-><init>(Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;)V

    invoke-virtual {v0, v6}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 102
    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 103
    const-string v6, "South"

    invoke-virtual {v2, v1, v6}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 106
    new-instance v6, Ljava/awt/FlowLayout;

    invoke-direct {v6}, Ljava/awt/FlowLayout;-><init>()V

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getPanel(Ljava/awt/LayoutManager;)Ljavax/swing/JPanel;

    move-result-object v5

    .line 107
    .local v5, "versionPanel":Ljavax/swing/JPanel;
    const-string v6, "java.runtime.version"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "javaVersion":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Java Version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->getLabel(Ljava/lang/String;)Ljavax/swing/JLabel;

    move-result-object v4

    .line 109
    .local v4, "versionLabel":Ljavax/swing/JLabel;
    invoke-virtual {v5, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 110
    const-string v6, "North"

    invoke-virtual {v2, v5, v6}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyTestApplet;->validate()V

    .line 113
    const/16 v6, 0x190

    const/16 v7, 0x64

    invoke-super {p0, v6, v7}, Ljavax/swing/JApplet;->setSize(II)V

    .line 114
    return-void
.end method
