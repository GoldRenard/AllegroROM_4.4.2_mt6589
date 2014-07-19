.class Lcom/android/settings/SettingsMTK$3;
.super Ljava/lang/Object;
.source "SettingsMTK.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsMTK;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsMTK;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsMTK;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/SettingsMTK$3;->this$0:Lcom/android/settings/SettingsMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/SettingsMTK$3;->this$0:Lcom/android/settings/SettingsMTK;

    iget-object v1, p0, Lcom/android/settings/SettingsMTK$3;->this$0:Lcom/android/settings/SettingsMTK;

    # getter for: Lcom/android/settings/SettingsMTK;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/SettingsMTK;->access$200(Lcom/android/settings/SettingsMTK;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    # invokes: Lcom/android/settings/SettingsMTK;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/SettingsMTK;->access$300(Lcom/android/settings/SettingsMTK;Ljava/lang/String;)V

    .line 294
    return-void
.end method
