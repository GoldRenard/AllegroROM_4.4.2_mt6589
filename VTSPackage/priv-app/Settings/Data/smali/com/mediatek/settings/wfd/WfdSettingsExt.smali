.class public Lcom/mediatek/settings/wfd/WfdSettingsExt;
.super Ljava/lang/Object;
.source "WfdSettingsExt.java"


# static fields
.field public static final DEVICE_1080P_30FPS_RESOLUTION:I = 0x7

.field public static final DEVICE_1080P_60FPS_RESOLUTION:I = 0x6

.field public static final DEVICE_1080P_ON_RESOLUTION:I = 0x5

.field public static final DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_720P_30FPS_RESOLUTION:I = 0x4

.field public static final DEVICE_720P_60FPS_RESOLUTION:I = 0x3

.field public static final DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MENU_ID_CHANGE_RESOLUTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WfdSettingsExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method


# virtual methods
.method public onCreateOptionMenu(Landroid/view/Menu;Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_display_max_resolution"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "currentResolution":I
    const-string v1, "WfdSettingsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current resolution is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v1, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_720P_RESOLUTION_LIST:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/settings/wfd/WfdSettingsExt;->DEVICE_1080P_RESOLUTION_LIST:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x2

    const v3, 0x7f090310

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 93
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 89
    goto :goto_0
.end method

.method public onOptionMenuSelected(Landroid/view/MenuItem;Landroid/app/FragmentManager;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    new-instance v0, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;

    invoke-direct {v0}, Lcom/mediatek/settings/wfd/WfdChangeResolutionFragment;-><init>()V

    const-string v1, "change resolution"

    invoke-virtual {v0, p2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
