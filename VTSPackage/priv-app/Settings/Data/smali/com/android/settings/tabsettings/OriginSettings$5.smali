.class Lcom/android/settings/tabsettings/OriginSettings$5;
.super Ljava/lang/Object;
.source "OriginSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/OriginSettings;->onResume()V
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
    .line 399
    iput-object p1, p0, Lcom/android/settings/tabsettings/OriginSettings$5;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/tabsettings/OriginSettings$5;->this$0:Lcom/android/settings/tabsettings/OriginSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 403
    return-void
.end method
