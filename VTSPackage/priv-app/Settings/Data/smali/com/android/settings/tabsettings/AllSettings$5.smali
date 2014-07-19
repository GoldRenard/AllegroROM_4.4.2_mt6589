.class Lcom/android/settings/tabsettings/AllSettings$5;
.super Ljava/lang/Object;
.source "AllSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/AllSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 397
    iput-object p1, p0, Lcom/android/settings/tabsettings/AllSettings$5;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$5;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$5;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    # getter for: Lcom/android/settings/tabsettings/AllSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/tabsettings/AllSettings;->access$300(Lcom/android/settings/tabsettings/AllSettings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    # invokes: Lcom/android/settings/tabsettings/AllSettings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/tabsettings/AllSettings;->access$400(Lcom/android/settings/tabsettings/AllSettings;Ljava/lang/String;)V

    .line 400
    return-void
.end method
