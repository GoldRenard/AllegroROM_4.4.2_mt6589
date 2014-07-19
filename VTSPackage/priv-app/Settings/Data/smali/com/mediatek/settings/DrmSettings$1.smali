.class Lcom/mediatek/settings/DrmSettings$1;
.super Ljava/lang/Object;
.source "DrmSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/DrmSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/DrmSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/DrmSettings;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/settings/DrmSettings$1;->this$0:Lcom/mediatek/settings/DrmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v3, 0x0

    .line 84
    # getter for: Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$000()Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    # getter for: Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$000()Lcom/mediatek/drm/OmaDrmClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmClient;->removeAllRights()I

    move-result v0

    .line 86
    .local v0, "result":I
    # getter for: Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$000()Lcom/mediatek/drm/OmaDrmClient;

    if-nez v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/mediatek/settings/DrmSettings$1;->this$0:Lcom/mediatek/settings/DrmSettings;

    # getter for: Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/settings/DrmSettings;->access$100(Lcom/mediatek/settings/DrmSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901ff

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 90
    # getter for: Lcom/mediatek/settings/DrmSettings;->sPreferenceReset:Landroid/preference/Preference;
    invoke-static {}, Lcom/mediatek/settings/DrmSettings;->access$200()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 94
    :goto_0
    const/4 v1, 0x0

    # setter for: Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {v1}, Lcom/mediatek/settings/DrmSettings;->access$002(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient;

    .line 96
    .end local v0    # "result":I
    :cond_0
    return-void

    .line 92
    .restart local v0    # "result":I
    :cond_1
    const-string v1, "DrmSettings"

    const-string v2, "removeAllRights fail!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
