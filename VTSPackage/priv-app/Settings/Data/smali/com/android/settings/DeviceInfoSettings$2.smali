.class Lcom/android/settings/DeviceInfoSettings$2;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->checkSecurityInfoAndShowDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;

.field final synthetic val$mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$2;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iput-object p2, p0, Lcom/android/settings/DeviceInfoSettings$2;->val$mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$2;->val$mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.android.settings.DeviceInfoSettings.safety_information"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 755
    return-void
.end method
