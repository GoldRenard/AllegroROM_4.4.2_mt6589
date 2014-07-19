.class final Lcom/android/settings/Settings$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/settings/Settings$TabsAdapter$TabInfo;->tag:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/android/settings/Settings$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 153
    iput-object p3, p0, Lcom/android/settings/Settings$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Settings$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings$TabsAdapter$TabInfo;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/Settings$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/Settings$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings$TabsAdapter$TabInfo;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/Settings$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
