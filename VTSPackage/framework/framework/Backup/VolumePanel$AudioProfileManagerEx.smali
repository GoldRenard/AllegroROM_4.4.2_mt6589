.class Landroid/view/VolumePanel$AudioProfileManagerEx;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioProfileManagerEx"
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;

.field private clazzName:Ljava/lang/String;

.field protected realObject:Ljava/lang/Object;

.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method public constructor <init>(Landroid/view/VolumePanel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1576
    iput-object p1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    iput-object v3, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->clazz:Ljava/lang/Class;

    .line 1573
    iput-object v3, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->clazzName:Ljava/lang/String;

    .line 1574
    iput-object v3, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->realObject:Ljava/lang/Object;

    .line 1577
    const-string v1, "com.mediatek.audioprofile.AudioProfileManager"

    iput-object v1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->clazzName:Ljava/lang/String;

    .line 1579
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->clazzName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->clazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :goto_0
    return-void

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VolumePanel"

    const-string v2, "can not find class :com.mediatek.audioprofile.AudioProfileManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iput-object v3, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->clazz:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramArrayOfClass"    # [Ljava/lang/Class;

    .prologue
    .line 1626
    :try_start_0
    iget-object v3, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->clazz:Ljava/lang/Class;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1628
    .local v0, "localMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1635
    .end local v0    # "localMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 1630
    :catch_0
    move-exception v2

    .line 1631
    .local v2, "localSecurityException":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1635
    .end local v2    # "localSecurityException":Ljava/lang/SecurityException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1632
    :catch_1
    move-exception v1

    .line 1633
    .local v1, "localNoSuchMethodException":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1598
    const-string v0, "getActiveProfileKey"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/VolumePanel$AudioProfileManagerEx;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramArrayOfClass"    # [Ljava/lang/Class;
    .param p3, "paramClass"    # Ljava/lang/Class;
    .param p4, "paramArrayOfObject"    # [Ljava/lang/Object;

    .prologue
    .line 1605
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel$AudioProfileManagerEx;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1607
    .local v1, "localReflectMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1608
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not find method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->realObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1621
    :goto_0
    return-object v2

    .line 1614
    :catch_0
    move-exception v0

    .line 1615
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1621
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1616
    :catch_1
    move-exception v0

    .line 1617
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1618
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1593
    const-string/jumbo v0, "setActiveProfile"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/VolumePanel$AudioProfileManagerEx;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 1589
    iput-object p1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->realObject:Ljava/lang/Object;

    .line 1590
    return-void
.end method
