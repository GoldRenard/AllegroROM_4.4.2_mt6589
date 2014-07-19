.class Lcom/android/settings/tabsettings/OriginSettings$4;
.super Ljava/lang/Object;
.source "OriginSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/OriginSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/OriginSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/OriginSettings;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings/tabsettings/OriginSettings$4;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/tabsettings/OriginSettings$4;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    iget-object v1, p0, Lcom/android/settings/tabsettings/OriginSettings$4;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    # getter for: Lcom/android/settings/tabsettings/OriginSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/tabsettings/OriginSettings;->access$300(Lcom/android/settings/tabsettings/OriginSettings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    # invokes: Lcom/android/settings/tabsettings/OriginSettings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/tabsettings/OriginSettings;->access$400(Lcom/android/settings/tabsettings/OriginSettings;Ljava/lang/String;)V

    .line 362
    return-void
.end method
