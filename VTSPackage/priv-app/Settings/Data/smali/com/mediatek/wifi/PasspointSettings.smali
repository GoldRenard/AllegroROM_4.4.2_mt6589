.class public Lcom/mediatek/wifi/PasspointSettings;
.super Ljava/lang/Object;
.source "PasspointSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CREDENTIAL_TYPE_INDEX:I = 0x1

.field private static final CREDENTIAL_TYPE_SIM:I = 0x12

.field private static final CREDENTIAL_TYPE_TLS:I = 0xd

.field private static final CREDENTIAL_TYPE_TTLS:I = 0x15

.field private static final EAP_METHOD_INDEX:I = 0x2

.field private static final HOTSPOT_INDEX:I = 0x0

.field private static final PASSPOINT_INFO_ITEMS:I = 0x3

.field private static final REG_CREDENTIAL_TYPE:Ljava/lang/String; = "selectedMethod=(\\d+)\\s"

.field private static final REG_EAP_METHOD:Ljava/lang/String; = "Phase2 method=(\\w+)\\s"

.field private static final REG_HOTSPOT:Ljava/lang/String; = "hs20=(\\d+)\\s"

.field private static final SIM_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PasspointSettings"

.field private static final TLS_INDEX:I = 0x2

.field private static final TTLS_INDEX:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPasspointCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "PasspointSettings"

    const-string v1, "PasspointSettings"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, Lcom/mediatek/wifi/PasspointSettings;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private static addRow(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p0, "configUi"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    const v1, 0x7f0b01f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method private static addRows(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/ViewGroup;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 11
    .param p0, "configUi"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 162
    const-string v8, "PasspointSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRows, DetailedState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v8, :cond_2

    .line 164
    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v3, "passpointInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/mediatek/wifi/PasspointSettings;->getPasspointInfo(Landroid/content/Context;Ljava/util/List;)V

    .line 167
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 168
    const v8, 0x7f09031c

    const v9, 0x7f09031f

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, p1, v8, v9}, Lcom/mediatek/wifi/PasspointSettings;->addRow(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "credentialType":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00bb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "eapMethodPhase":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 176
    .local v4, "strCredentialType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 178
    .local v5, "strEapMethodPhase1":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 179
    .local v7, "type":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 180
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 194
    const-string v8, "PasspointSettings"

    const-string v9, "addRows error"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    const v8, 0x7f09031d

    invoke-static {p0, p1, v8, v4}, Lcom/mediatek/wifi/PasspointSettings;->addRow(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 200
    :cond_1
    const/4 v8, 0x2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    .local v6, "strEapMethodPhase2":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 202
    const v8, 0x7f09031e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, p1, v8, v9}, Lcom/mediatek/wifi/PasspointSettings;->addRow(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 206
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "credentialType":[Ljava/lang/String;
    .end local v2    # "eapMethodPhase":[Ljava/lang/String;
    .end local v3    # "passpointInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "strCredentialType":Ljava/lang/String;
    .end local v5    # "strEapMethodPhase1":Ljava/lang/String;
    .end local v6    # "strEapMethodPhase2":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 182
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "credentialType":[Ljava/lang/String;
    .restart local v2    # "eapMethodPhase":[Ljava/lang/String;
    .restart local v3    # "passpointInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "strCredentialType":Ljava/lang/String;
    .restart local v5    # "strEapMethodPhase1":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :sswitch_0
    const/4 v8, 0x0

    aget-object v4, v1, v8

    .line 183
    const/4 v8, 0x0

    aget-object v5, v2, v8

    .line 184
    goto :goto_0

    .line 186
    :sswitch_1
    const/4 v8, 0x1

    aget-object v4, v1, v8

    .line 187
    const/4 v8, 0x1

    aget-object v5, v2, v8

    .line 188
    goto :goto_0

    .line 190
    :sswitch_2
    const/4 v8, 0x2

    aget-object v4, v1, v8

    .line 191
    const/4 v8, 0x2

    aget-object v5, v2, v8

    .line 192
    goto :goto_0

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0x12 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static addView(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/net/NetworkInfo$DetailedState;Landroid/view/View;Z)Z
    .locals 5
    .param p0, "configUi"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "shouldSetDisconnectButton"    # Z

    .prologue
    .line 139
    const-string v2, "PasspointSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addView, shouldSetDisconnectButton = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p1, :cond_1

    .line 142
    const v2, 0x7f0b02fe

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 143
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0b033c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-static {p0, v1, p1}, Lcom/mediatek/wifi/PasspointSettings;->addRows(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/ViewGroup;Landroid/net/NetworkInfo$DetailedState;)V

    .line 148
    if-eqz p3, :cond_0

    .line 149
    const v2, 0x7f090260

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    const v2, 0x7f090659

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 152
    const/4 v2, 0x1

    .line 155
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getPasspointInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 237
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getHsStatus()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "info":Ljava/lang/String;
    const-string v2, "PasspointSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasspointInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-object v0
.end method

.method private static getPasspointInfo(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "passpointInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mediatek/wifi/PasspointSettings;->getPasspointInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "info":Ljava/lang/String;
    const-string v1, "hs20=(\\d+)\\s"

    invoke-static {v1, v0}, Lcom/mediatek/wifi/PasspointSettings;->regPasspointInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v1, "selectedMethod=(\\d+)\\s"

    invoke-static {v1, v0}, Lcom/mediatek/wifi/PasspointSettings;->regPasspointInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v1, "Phase2 method=(\\w+)\\s"

    invoke-static {v1, v0}, Lcom/mediatek/wifi/PasspointSettings;->regPasspointInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method private static regPasspointInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "reg"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :cond_1
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 220
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 221
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static setSummary(Landroid/preference/Preference;Landroid/content/Context;ZLandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p0, "ap"    # Landroid/preference/Preference;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportedPasspoint"    # Z
    .param p3, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    const-string v1, "PasspointSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSummary, ap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supportedPasspoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "summary":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p3, v1, :cond_1

    const v1, 0x7f09031a

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "PasspointSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSummary = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    .end local v0    # "summary":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 111
    .restart local v0    # "summary":Ljava/lang/StringBuilder;
    :cond_1
    const v1, 0x7f09031b

    goto :goto_0
.end method

.method public static shouldUpdate(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "info"    # Landroid/net/wifi/WifiInfo;
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "supportedPasspoint"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-eqz p2, :cond_0

    .line 126
    const-string v3, "PasspointSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpdate, info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    const-string v3, "mediatek.wlan.hs20.sigma"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 129
    .local v0, "sigmaTest":Z
    :goto_0
    const-string v3, "PasspointSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpdate, sigmaTest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    return v2

    .end local v0    # "sigmaTest":Z
    :cond_3
    move v0, v2

    .line 128
    goto :goto_0
.end method


# virtual methods
.method public addPasspointPreference(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 86
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/wifi/PasspointSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090318

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090319

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 89
    iget-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 91
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_passpoint_on"

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    :cond_0
    return v1

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshPasspointPreference(Z)V
    .locals 5
    .param p1, "wifiEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/mediatek/wifi/PasspointSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_passpoint_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/wifi/PasspointSettings;->mPasspointCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 100
    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method
