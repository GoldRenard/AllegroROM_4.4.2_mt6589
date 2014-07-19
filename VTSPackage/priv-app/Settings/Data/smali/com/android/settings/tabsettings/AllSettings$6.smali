.class Lcom/android/settings/tabsettings/AllSettings$6;
.super Ljava/lang/Object;
.source "AllSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/AllSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/AllSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/AllSettings;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/settings/tabsettings/AllSettings$6;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$6;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    # getter for: Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/tabsettings/AllSettings;->access$500(Lcom/android/settings/tabsettings/AllSettings;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$6;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    # getter for: Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/settings/tabsettings/AllSettings;->access$500(Lcom/android/settings/tabsettings/AllSettings;)Landroid/preference/PreferenceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$6;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    # getter for: Lcom/android/settings/tabsettings/AllSettings;->mActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/tabsettings/AllSettings;->access$500(Lcom/android/settings/tabsettings/AllSettings;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 692
    return-void
.end method
