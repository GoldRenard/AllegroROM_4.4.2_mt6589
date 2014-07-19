.class public Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
.super Ljava/lang/Object;
.source "ParamMap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParamMap"


# instance fields
.field private name:[Ljava/lang/String;

.field private value:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    .line 10
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    return-void
.end method

.method private check(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    if-lt p1, v1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 67
    :cond_0
    const-string v2, "ParamMap"

    const-string v3, "index of custom parameter should greater than %s and less than %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return v0

    .line 70
    :cond_1
    if-nez p2, :cond_2

    .line 71
    const-string v1, "ParamMap"

    const-string v2, "name of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    if-nez p3, :cond_3

    .line 75
    const-string v1, "ParamMap"

    const-string v2, "value of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method private revise(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 82
    move-object v0, p1

    .line 84
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 85
    const-string v1, "ParamMap"

    const-string v2, "Each length of parameters value should less than 128 character, or will be CUT"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    .line 37
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 5

    .prologue
    .line 13
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 14
    .local v1, "paramMap":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 15
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_1
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 58
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    .line 61
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 46
    :goto_1
    return v1

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->check(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->name:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x80

    invoke-direct {p0, p2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 26
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->value:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x200

    invoke-direct {p0, p3, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const/4 v1, 0x1

    .line 32
    :goto_0
    return v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ParamMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParamMap.put Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
