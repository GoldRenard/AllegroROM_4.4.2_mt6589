.class public Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;
.super Lcom/android/settings/DateTimeSettings;
.source "FmtDateTimeSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private anchorView:Landroid/view/View;

.field private mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

.field private mTimeZonePopup:Landroid/widget/ListPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private showTimezonePicker(I)V
    .locals 4
    .param p1, "anchorViewId"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "anchorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 57
    sget-object v1, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find zone picker anchor view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 61
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 62
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$1;

    invoke-direct {v2, p0}, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$1;-><init>(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 78
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private showTimezonePicker(Landroid/view/View;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    sget-object v0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find zone picker anchor view "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 87
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$2;

    invoke-direct {v1, p0}, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$2;-><init>(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 34
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->anchorView:Landroid/view/View;

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 38
    .local v1, "linearLayout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->anchorView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040048

    invoke-static {v2, v4, v3}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->anchorView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->showTimezonePicker(Landroid/view/View;)V

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/DateTimeSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
