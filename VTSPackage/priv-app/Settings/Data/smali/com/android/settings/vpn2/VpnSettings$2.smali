.class Lcom/android/settings/vpn2/VpnSettings$2;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnSettings;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;

.field final synthetic val$preference_temp:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/settings/vpn2/VpnSettings$VpnPreference;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$2;->val$preference_temp:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    # getter for: Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/vpn2/VpnSettings;->access$200(Lcom/android/settings/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn2/VpnSettings;->access$300(Lcom/android/settings/vpn2/VpnSettings;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$2;->val$preference_temp:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 438
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    # getter for: Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/settings/vpn2/VpnSettings;->access$400(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    # getter for: Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/vpn2/VpnSettings;->access$200(Lcom/android/settings/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    # getter for: Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v0}, Lcom/android/settings/vpn2/VpnSettings;->access$500(Lcom/android/settings/vpn2/VpnSettings;)Landroid/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    # getter for: Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/vpn2/VpnSettings;->access$200(Lcom/android/settings/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 440
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$2;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    # getter for: Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/vpn2/VpnSettings;->access$200(Lcom/android/settings/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/vpn2/VpnSettings;->deleteLockdownItem(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/settings/vpn2/VpnSettings;->access$600(Lcom/android/settings/vpn2/VpnSettings;Ljava/lang/String;)Z

    .line 441
    return-void
.end method
