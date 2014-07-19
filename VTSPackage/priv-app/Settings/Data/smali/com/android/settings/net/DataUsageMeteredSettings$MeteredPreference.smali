.class Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/preference/CheckBoxPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/settings/net/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    iput-object p1, p0, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings/net/DataUsageMeteredSettings;

    .line 123
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 124
    iput-object p3, p0, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 126
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 128
    iput-boolean v6, p0, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 129
    # getter for: Lcom/android/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {p1}, Lcom/android/settings/net/DataUsageMeteredSettings;->access$000(Lcom/android/settings/net/DataUsageMeteredSettings;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 130
    .local v0, "policy":Landroid/net/NetworkPolicy;
    const-string v1, "DataUsageMeteredSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MeteredPreference, policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v0, :cond_1

    .line 132
    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 134
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 142
    return-void

    .line 136
    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 147
    const-string v0, "DataUsageMeteredSettings"

    const-string v1, "notifyChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings/net/DataUsageMeteredSettings;

    # getter for: Lcom/android/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v0}, Lcom/android/settings/net/DataUsageMeteredSettings;->access$000(Lcom/android/settings/net/DataUsageMeteredSettings;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    .line 151
    :cond_0
    return-void
.end method
