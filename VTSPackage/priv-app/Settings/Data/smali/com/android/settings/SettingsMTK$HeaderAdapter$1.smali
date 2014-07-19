.class Lcom/android/settings/SettingsMTK$HeaderAdapter$1;
.super Ljava/lang/Object;
.source "SettingsMTK.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsMTK$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsMTK$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsMTK$HeaderAdapter;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter$1;->this$0:Lcom/android/settings/SettingsMTK$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1098
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter$1;->this$0:Lcom/android/settings/SettingsMTK$HeaderAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1101
    return-void
.end method
