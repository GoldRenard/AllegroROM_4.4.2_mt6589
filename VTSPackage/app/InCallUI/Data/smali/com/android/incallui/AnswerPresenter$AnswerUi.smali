.class interface abstract Lcom/android/incallui/AnswerPresenter$AnswerUi;
.super Ljava/lang/Object;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnswerUi"
.end annotation


# virtual methods
.method public abstract configureMessageDialog(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract showAnswerUi(Z)V
.end method

.method public abstract showMessageDialog()V
.end method

.method public abstract showTextButton(Z)V
.end method

.method public abstract updatePromptsMessage(Z)V
.end method
