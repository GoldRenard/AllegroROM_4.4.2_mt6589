.class public Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;
.super Landroid/app/DialogFragment;
.source "LicenseAgreementDialog.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private agreeButton:Landroid/widget/Button;

.field private content_item_content1:Landroid/widget/TextView;

.field private content_item_content10_1:Landroid/widget/TextView;

.field private content_item_content11_1:Landroid/widget/TextView;

.field private content_item_content2:Landroid/widget/TextView;

.field private content_item_content3:Landroid/widget/TextView;

.field private content_item_content4_1:Landroid/widget/TextView;

.field private content_item_content5:Landroid/widget/TextView;

.field private content_item_content6:Landroid/widget/TextView;

.field private content_item_content7_1:Landroid/widget/TextView;

.field private content_item_content8_1:Landroid/widget/TextView;

.field private content_item_content9:Landroid/widget/TextView;

.field private content_item_title1:Landroid/widget/TextView;

.field private content_item_title10:Landroid/widget/TextView;

.field private content_item_title11:Landroid/widget/TextView;

.field private content_item_title2:Landroid/widget/TextView;

.field private content_item_title3:Landroid/widget/TextView;

.field private content_item_title4:Landroid/widget/TextView;

.field private content_item_title5:Landroid/widget/TextView;

.field private content_item_title6:Landroid/widget/TextView;

.field private content_item_title7:Landroid/widget/TextView;

.field private content_item_title8:Landroid/widget/TextView;

.field private content_item_title9:Landroid/widget/TextView;

.field private hashMapContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private notice_item1:Landroid/widget/TextView;

.field private notice_item2:Landroid/widget/TextView;

.field private notice_item3:Landroid/widget/TextView;

.field private notice_title:Landroid/widget/TextView;

.field private scrollView:Landroid/widget/ScrollView;

.field private title_id_date:Landroid/widget/TextView;

.field private title_license:Landroid/widget/TextView;

.field private title_summary:Landroid/widget/TextView;

.field private title_summary_1_1:Landroid/widget/TextView;

.field private title_summary_1_2:Landroid/widget/TextView;

.field private title_summary_1_5:Landroid/widget/TextView;

.field private title_summary_link:Landroid/widget/TextView;

.field private title_summary_link_descirpt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "LicenseAgreementDialog"

    sput-object v0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    .line 84
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mActivity:Landroid/app/Activity;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    .line 87
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mActivity:Landroid/app/Activity;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->agreeButton:Landroid/widget/Button;

    return-object v0
.end method

.method private findItemView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    const v0, 0x7f0b0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_license:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0b0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_id_date:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0b0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0b0149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_link_descirpt:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0b014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_link:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0b014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_1_1:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0b014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_1_2:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0b014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_1_5:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0b014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title1:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0b0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content1:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0b0151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title2:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0b0152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content2:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b0153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title3:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b0154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content3:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0b0155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title4:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0b0156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content4_1:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0b0157

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title5:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0b0158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content5:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0b0159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title6:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0b015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content6:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0b015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title7:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0b015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content7_1:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0b015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title8:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0b015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content8_1:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0b015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title9:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0b0160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content9:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0b0161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title10:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0b0162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content10_1:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0b0163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title11:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0b0164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content11_1:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0b0165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_title:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0b0166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_item1:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0b0167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_item2:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0b0168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_item3:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0b0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->agreeButton:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->agreeButton:Landroid/widget/Button;

    new-instance v1, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$1;

    invoke-direct {v1, p0}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$1;-><init>(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v0, 0x7f0b0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->scrollView:Landroid/widget/ScrollView;

    .line 177
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->scrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$2;

    invoke-direct {v1, p0}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$2;-><init>(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    return-void
.end method

.method public static getInstance()Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    invoke-direct {v0}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;-><init>()V

    return-object v0
.end method

.method private setHashContent(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content2"

    const v2, 0x7f090c67

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content2_1"

    const v2, 0x7f090c68

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content2_2"

    const v2, 0x7f090c69

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content2_3"

    const v2, 0x7f090c6a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content2_4"

    const v2, 0x7f090c6b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content2_5"

    const v2, 0x7f090c6c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content4_1"

    const v2, 0x7f090c70

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content4_2"

    const v2, 0x7f090c71

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content6_1"

    const v2, 0x7f090c75

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content6_2"

    const v2, 0x7f090c76

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content6_3"

    const v2, 0x7f090c77

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content6_4"

    const v2, 0x7f090c78

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content7_1"

    const v2, 0x7f090c7a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content7_2"

    const v2, 0x7f090c7b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content7_3"

    const v2, 0x7f090c7c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content7_4"

    const v2, 0x7f090c7d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content7_5"

    const v2, 0x7f090c7e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content8_1"

    const v2, 0x7f090c80

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content8_2"

    const v2, 0x7f090c81

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content8_3"

    const v2, 0x7f090c82

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content10_1"

    const v2, 0x7f090c86

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content10_2"

    const v2, 0x7f090c87

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content10_3"

    const v2, 0x7f090c88

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content11_1"

    const v2, 0x7f090c8a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content11_2"

    const v2, 0x7f090c8b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content11_3"

    const v2, 0x7f090c8c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content11_4"

    const v2, 0x7f090c8d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title1"

    const v2, 0x7f090c64

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content1"

    const v2, 0x7f090c65

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title2"

    const v2, 0x7f090c66

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title3"

    const v2, 0x7f090c6d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content3"

    const v2, 0x7f090c6e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title4"

    const v2, 0x7f090c6f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title5"

    const v2, 0x7f090c72

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content5"

    const v2, 0x7f090c73

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title6"

    const v2, 0x7f090c74

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title7"

    const v2, 0x7f090c79

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title8"

    const v2, 0x7f090c7f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title9"

    const v2, 0x7f090c83

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "content9"

    const v2, 0x7f090c84

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title10"

    const v2, 0x7f090c85

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title11"

    const v2, 0x7f090c89

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_license"

    const v2, 0x7f090c5a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_id_date"

    const v2, 0x7f090c59

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary"

    const v2, 0x7f090c5b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_link_descirpt"

    const v2, 0x7f090c5c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_link"

    const v2, 0x7f090c5d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_1_1"

    const v2, 0x7f090c5e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_1_2"

    const v2, 0x7f090c5f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_1_3"

    const v2, 0x7f090c60

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_1_4"

    const v2, 0x7f090c61

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_1_5"

    const v2, 0x7f090c62

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "title_summary_1_6"

    const v2, 0x7f090c63

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "notice_title"

    const v2, 0x7f090c8e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "notice_item1"

    const v2, 0x7f090c8f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "notice_item2"

    const v2, 0x7f090c90

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v1, "notice_item3"

    const v2, 0x7f090c91

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method private setItemGeneralTextInfo()V
    .locals 4

    .prologue
    .line 203
    const-string v0, "xsj"

    const-string v1, "setItemGeneralTextInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_license:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "title_license"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_id_date:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "title_id_date"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "title_summary"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_link_descirpt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title_summary_link_descirpt"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title1"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "content1"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title2"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content2_1"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content2_2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content2_3"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content2_4"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content2_5"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title3"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "content3"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title4:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title4"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title5:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title5"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content5:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "content5"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title6:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title6"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content6:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content6_1"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content6_2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content6_3"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content6_4"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title7:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title7"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title8:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title8"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title9:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title9"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content9:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "content9"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title10:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title10"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content10_1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content10_1"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content10_2"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v3, "content10_3"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_title11:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v2, "title11"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method private setItemSpecialFormatTextInfo()V
    .locals 13

    .prologue
    .line 251
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v9, -0x1000000

    invoke-direct {v0, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 252
    .local v0, "blackColorSpan":Landroid/text/style/ForegroundColorSpan;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v2, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 253
    .local v2, "styleBoldSpan":Landroid/text/style/StyleSpan;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0x1c

    invoke-direct {v1, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 255
    .local v1, "sizeSpan":Landroid/text/style/AbsoluteSizeSpan;
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_link:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<a href=\""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "title_summary_link"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\">"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "title_summary_link"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "</a>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "<br>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_link:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 260
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_1_1:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "title_summary_1_1"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "<br>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v7, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "title_summary_1_2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "title_summary_1_3"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "title_summary_1_4"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 268
    .local v7, "txtSummarySpanStyle1_1":Landroid/text/SpannableStringBuilder;
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/high16 v10, -0x1000000

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 270
    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_1_2:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v8, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "title_summary_1_5"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "title_summary_1_6"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 279
    .local v8, "txtSummarySpanStyle1_5":Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->title_summary_1_5:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content4_1"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content4_2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    .local v4, "txtSpanStyle4_1":Landroid/text/SpannableStringBuilder;
    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content4_1:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content7_1"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content7_2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content7_3"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content7_4"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content7_5"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    .local v5, "txtSpanStyle7_1":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content7_1"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "content7_2"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v11

    const/16 v11, 0x21

    invoke-virtual {v5, v0, v10, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 302
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content7_1:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "content7_1"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "<br>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "content7_2"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v6, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content8_1"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content8_2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content8_3"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 311
    .local v6, "txtSpanStyle8_1":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content8_1"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v11, 0x21

    invoke-virtual {v6, v1, v10, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 320
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content8_1:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "content8_1"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "<br>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "content8_2"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "<br>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "content8_3"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content11_1"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content11_2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content11_3"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content11_4"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 333
    .local v3, "txtSpanStyle11_1":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x4

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content11_2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v11, 0x21

    invoke-virtual {v3, v0, v10, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 336
    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v10, "content11_1"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content11_2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v10, v9

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "content11_3"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v3, v0, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 342
    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->content_item_content11_1:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_title:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "notice_title"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_item1:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "notice_item1"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_item2:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v11, "notice_item2"

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->notice_item3:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    const-string v12, "notice_item3"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "<br><br>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const-string v3, "SettingWizardMain"

    const-string v4, "LicenseAgreementDialog onCreateDialog()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 101
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04005a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, "view":Landroid/view/View;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->hashMapContent:Ljava/util/HashMap;

    .line 103
    iget-object v3, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v3}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->setHashContent(Landroid/content/Context;)V

    .line 104
    invoke-direct {p0, v2}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->findItemView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->setItemGeneralTextInfo()V

    .line 106
    invoke-direct {p0}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->setItemSpecialFormatTextInfo()V

    .line 110
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public showAlertDialog()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 92
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 94
    return-void
.end method
