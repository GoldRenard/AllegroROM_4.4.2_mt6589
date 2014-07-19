.class Lcom/android/settings/ApnInformation$2;
.super Landroid/telephony/PhoneStateListener;
.source "ApnInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnInformation;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnInformation;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/ApnInformation$2;->this$0:Lcom/android/settings/ApnInformation;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/ApnInformation$2;->this$0:Lcom/android/settings/ApnInformation;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 221
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/ApnInformation$2;->this$0:Lcom/android/settings/ApnInformation;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    # setter for: Lcom/android/settings/ApnInformation;->mIsCallStateIdle:Z
    invoke-static {v2, v1}, Lcom/android/settings/ApnInformation;->access$302(Lcom/android/settings/ApnInformation;Z)Z

    .line 223
    return-void

    .line 221
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
