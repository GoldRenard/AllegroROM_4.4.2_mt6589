.class Lcom/android/server/ConnectivityService$12;
.super Landroid/net/INetworkManagementIpv6EventObserver$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 6704
    iput-object p1, p0, Lcom/android/server/ConnectivityService$12;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkManagementIpv6EventObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceDNSChangedIpv6(Ljava/lang/String;I)V
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "numOfAddress"    # I

    .prologue
    .line 6711
    const/4 v7, 0x0

    .line 6712
    .local v7, "i":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6714
    .local v2, "dhcpDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "interfaceDNSChangedIpv6:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 6716
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ge v0, v14, :cond_1

    .line 6763
    :cond_0
    :goto_0
    return-void

    .line 6720
    :cond_1
    const/4 v7, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v7, v0, :cond_3

    .line 6721
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "net.ipv6."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".dns"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6722
    .local v4, "dnsPropName":Ljava/lang/String;
    const-string v14, ""

    invoke-static {v4, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6724
    .local v5, "dnsPropVal":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 6726
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Add DNS server-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 6727
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6720
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6728
    :catch_0
    move-exception v6

    .line 6729
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 6734
    .end local v4    # "dnsPropName":Ljava/lang/String;
    .end local v5    # "dnsPropVal":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v14

    if-nez v14, :cond_4

    .line 6735
    const-string v14, "No dns server from DHCP"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 6739
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$12;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    .local v1, "arr$":[Landroid/net/NetworkStateTracker;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_0

    aget-object v13, v1, v8

    .line 6740
    .local v13, "tracker":Landroid/net/NetworkStateTracker;
    if-eqz v13, :cond_9

    .line 6741
    instance-of v14, v13, Landroid/net/MobileDataStateTracker;

    if-nez v14, :cond_5

    instance-of v14, v13, Landroid/net/wifi/WifiStateTracker;

    if-eqz v14, :cond_9

    .line 6742
    :cond_5
    const-string v14, "Update link proerty"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 6743
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 6744
    .local v11, "p":Landroid/net/LinkProperties;
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 6745
    .local v9, "info":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_0

    .line 6746
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 6747
    .local v12, "targetIface":Ljava/lang/String;
    if-eqz v12, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6748
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 6749
    .local v3, "dns":Ljava/net/InetAddress;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Add dns:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 6750
    invoke-virtual {v11, v3}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_4

    .line 6752
    .end local v3    # "dns":Ljava/net/InetAddress;
    :cond_6
    instance-of v14, v13, Landroid/net/MobileDataStateTracker;

    if-eqz v14, :cond_8

    .line 6753
    check-cast v13, Landroid/net/MobileDataStateTracker;

    .end local v13    # "tracker":Landroid/net/NetworkStateTracker;
    invoke-virtual {v13, v11}, Landroid/net/MobileDataStateTracker;->setLinkProperties(Landroid/net/LinkProperties;)V

    .line 6757
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$12;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    # invokes: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static {v14, v15}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 6754
    .restart local v13    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_8
    instance-of v14, v13, Landroid/net/wifi/WifiStateTracker;

    if-eqz v14, :cond_7

    .line 6755
    check-cast v13, Landroid/net/wifi/WifiStateTracker;

    .end local v13    # "tracker":Landroid/net/NetworkStateTracker;
    invoke-virtual {v13, v11}, Landroid/net/wifi/WifiStateTracker;->setLinkProperties(Landroid/net/LinkProperties;)V

    goto :goto_5

    .line 6739
    .end local v9    # "info":Landroid/net/NetworkInfo;
    .end local v11    # "p":Landroid/net/LinkProperties;
    .end local v12    # "targetIface":Ljava/lang/String;
    .local v8, "i$":I
    .restart local v13    # "tracker":Landroid/net/NetworkStateTracker;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public interfaceStatusChangedIpv6(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 6708
    return-void
.end method
