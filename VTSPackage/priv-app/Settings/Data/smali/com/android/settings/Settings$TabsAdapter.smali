.class public Lcom/android/settings/Settings$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "Settings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$TabsAdapter$DummyTabFactory;,
        Lcom/android/settings/Settings$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/Settings$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p3, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 175
    iput-object p1, p0, Lcom/android/settings/Settings$TabsAdapter;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    .line 177
    iput-object p3, p0, Lcom/android/settings/Settings$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 178
    iget-object v0, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/Settings$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/Settings$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 181
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/android/settings/Settings$TabsAdapter$DummyTabFactory;

    iget-object v3, p0, Lcom/android/settings/Settings$TabsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/Settings$TabsAdapter$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 185
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "tag":Ljava/lang/String;
    new-instance v0, Lcom/android/settings/Settings$TabsAdapter$TabInfo;

    invoke-direct {v0, v1, p2, p3}, Lcom/android/settings/Settings$TabsAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 188
    .local v0, "info":Lcom/android/settings/Settings$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 191
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/Settings$TabsAdapter$TabInfo;

    .line 201
    .local v1, "info":Lcom/android/settings/Settings$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/android/settings/Settings$TabsAdapter;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/settings/Settings$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Lcom/android/settings/Settings$TabsAdapter$TabInfo;->access$000(Lcom/android/settings/Settings$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/settings/Settings$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/settings/Settings$TabsAdapter$TabInfo;->access$100(Lcom/android/settings/Settings$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 202
    .local v0, "fragment":Landroid/app/Fragment;
    # getter for: Lcom/android/settings/Settings;->fragmentMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/settings/Settings;->access$200()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 219
    int-to-float v4, p1

    add-float/2addr v4, p2

    iget-object v5, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 221
    .local v3, "tmpoffset":F
    :try_start_0
    const-string v4, "android.widget.TabHost"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, "aops":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setTabCoordScale"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 223
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "aops":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "er":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 238
    .local v1, "widget":Landroid/widget/TabWidget;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 239
    .local v0, "oldFocusability":I
    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 240
    iget-object v2, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 241
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 244
    :try_start_0
    # getter for: Lcom/android/settings/Settings;->fragmentMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/settings/Settings;->access$200()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    # setter for: Lcom/android/settings/Settings;->mFragment:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/settings/Settings;->access$302(Landroid/app/Fragment;)Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 245
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings/Settings$TabsAdapter;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 210
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/settings/Settings$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/settings/Settings$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 214
    :cond_0
    return-void
.end method
