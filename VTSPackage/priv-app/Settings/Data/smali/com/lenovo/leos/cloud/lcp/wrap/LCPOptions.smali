.class public Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;
.super Ljava/lang/Object;
.source "LCPOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;
    }
.end annotation


# static fields
.field private static inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;


# instance fields
.field options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->options:Ljava/util/Map;

    .line 17
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->optionsDefaultValue()V

    .line 18
    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->inst:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public backupSimCardContact(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 65
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;->BackupSimCardContact:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->bool(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;Z)V

    .line 66
    return-void
.end method

.method public backupSimCardContact()Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;->BackupSimCardContact:Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->bool(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;)Z

    move-result v0

    return v0
.end method

.method bool(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;Z)V
    .locals 3
    .param p1, "opname"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;
    .param p2, "val"    # Z

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->options:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method bool(Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;)Z
    .locals 5
    .param p1, "opname"    # Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions$OpName;

    .prologue
    const/4 v3, 0x0

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->options:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->options:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 50
    check-cast v2, Ljava/lang/Boolean;

    .line 51
    .local v2, "val":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 60
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "val":Ljava/lang/Boolean;
    :cond_0
    return v3
.end method

.method protected optionsDefaultValue()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->backupSimCardContact(Z)V

    .line 22
    return-void
.end method
