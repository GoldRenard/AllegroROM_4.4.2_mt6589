.class synthetic Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg$1;
.super Ljava/lang/Object;
.source "DownloadGlobalMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lenovo$lps$reaper$sdk$util$Constants$MsgConst$ClickType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;->values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg$1;->$SwitchMap$com$lenovo$lps$reaper$sdk$util$Constants$MsgConst$ClickType:[I

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg$1;->$SwitchMap$com$lenovo$lps$reaper$sdk$util$Constants$MsgConst$ClickType:[I

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;->View:Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
