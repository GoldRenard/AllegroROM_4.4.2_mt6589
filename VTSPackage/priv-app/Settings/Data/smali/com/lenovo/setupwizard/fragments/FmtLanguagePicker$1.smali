.class Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "FmtLanguagePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;

.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;Landroid/content/Context;II[Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->this$0:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;

    iput-object p6, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p7, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->val$layoutId:I

    iput p8, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->val$fieldId:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 154
    if-nez p2, :cond_1

    .line 155
    iget-object v3, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->val$layoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, "view":Landroid/view/View;
    iget v3, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->val$fieldId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 157
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;

    .line 163
    .local v0, "item":Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;
    invoke-virtual {v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 165
    invoke-virtual {v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$1;->this$0:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;

    # invokes: Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->setSelect(I)V
    invoke-static {v3, p1}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->access$000(Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;I)V

    .line 170
    :cond_0
    return-object v2

    .line 159
    .end local v0    # "item":Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$LocaleInfo;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    move-object v2, p2

    .line 160
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "text":Landroid/widget/TextView;
    goto :goto_0
.end method
