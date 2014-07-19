.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookView;
.super Ljava/lang/Object;
.source "IdeaUI_HookView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findViewById(Landroid/view/View;I)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "android_id"    # I

    .prologue
    .line 15
    move v0, p1

    .line 176
    .local v0, "mappedId":I
    return v0
.end method
