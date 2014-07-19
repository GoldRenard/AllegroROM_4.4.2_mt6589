.class public Lledroid/utils/ShortcutHelper$ShortcutCreatorInstallException;
.super Ljava/lang/Exception;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/utils/ShortcutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutCreatorInstallException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1440813427b80a7aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 150
    return-void
.end method
