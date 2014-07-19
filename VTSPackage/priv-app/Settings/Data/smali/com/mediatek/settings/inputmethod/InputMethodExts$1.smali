.class Lcom/mediatek/settings/inputmethod/InputMethodExts$1;
.super Ljava/lang/Object;
.source "InputMethodExts.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/inputmethod/InputMethodExts;->initExtendsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/inputmethod/InputMethodExts;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string v0, "InputMethodAndLanguageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;

    # getter for: Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIm:Landroid/hardware/input/InputManager;
    invoke-static {v0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->access$100(Lcom/mediatek/settings/inputmethod/InputMethodExts;)Landroid/hardware/input/InputManager;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;

    # getter for: Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->access$000(Lcom/mediatek/settings/inputmethod/InputMethodExts;)Landroid/content/Context;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/hardware/input/InputManager;->setPointerPrimaryKey(Landroid/content/Context;Z)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;->this$0:Lcom/mediatek/settings/inputmethod/InputMethodExts;

    # invokes: Lcom/mediatek/settings/inputmethod/InputMethodExts;->updatePointerPrimaryValue()V
    invoke-static {v0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->access$200(Lcom/mediatek/settings/inputmethod/InputMethodExts;)V

    .line 84
    return v1

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0
.end method
