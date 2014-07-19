.class Lcom/mediatek/thememanager/ThemeManager$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/thememanager/ThemeManager;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/thememanager/ThemeManager;


# direct methods
.method constructor <init>(Lcom/mediatek/thememanager/ThemeManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/thememanager/ThemeManager$1;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;

    iget-object v1, p0, Lcom/mediatek/thememanager/ThemeManager$1;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;-><init>(Lcom/mediatek/thememanager/ThemeManager;Lcom/mediatek/thememanager/ThemeManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/thememanager/ThemeManager$1;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    # getter for: Lcom/mediatek/thememanager/ThemeManager;->mCurrentPosition:I
    invoke-static {v3}, Lcom/mediatek/thememanager/ThemeManager;->access$000(Lcom/mediatek/thememanager/ThemeManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method
