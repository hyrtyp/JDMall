.class public abstract Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;
.super Lcom/jd/droidlib/activity/stock/FragmentActivity;
.source "TabbedFragmentActivity.java"


# static fields
.field private static final CURR_TAB:Ljava/lang/String; = "_curr_tab"


# instance fields
.field private enterAnimation:I

.field private exitAnimation:I

.field private final fragmentsOnTab:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final manuallyHiddenFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tabListener:Landroid/app/ActionBar$TabListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jd/droidlib/activity/stock/FragmentActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->fragmentsOnTab:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->manuallyHiddenFragments:Ljava/util/HashSet;

    .line 38
    new-instance v0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity$1;-><init>(Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;)V

    iput-object v0, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->tabListener:Landroid/app/ActionBar$TabListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->showFragmentsForCurrentTab(Landroid/app/FragmentTransaction;)V

    return-void
.end method

.method private showFragmentsForCurrentTab(Landroid/app/FragmentTransaction;)V
    .locals 9
    .parameter "ft"

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getCurrentTab()I

    move-result v0

    .line 131
    .local v0, currTabPos:I
    iget v4, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->enterAnimation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->exitAnimation:I

    if-eqz v4, :cond_0

    .line 132
    iget v4, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->enterAnimation:I

    iget v6, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->exitAnimation:I

    invoke-virtual {p1, v4, v6}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 134
    :cond_0
    const/4 v3, 0x0

    .local v3, tabPos:I
    :goto_0
    iget-object v4, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->fragmentsOnTab:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 146
    return-void

    .line 135
    :cond_1
    if-ne v3, v0, :cond_2

    const/4 v2, 0x1

    .line 136
    .local v2, isCurrTab:Z
    :goto_1
    iget-object v4, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->fragmentsOnTab:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/app/Fragment;

    array-length v7, v4

    move v6, v5

    :goto_2
    if-lt v6, v7, :cond_3

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #isCurrTab:Z
    :cond_2
    move v2, v5

    .line 135
    goto :goto_1

    .line 136
    .restart local v2       #isCurrTab:Z
    :cond_3
    aget-object v1, v4, v6

    .line 137
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v2, :cond_5

    .line 138
    iget-object v8, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->manuallyHiddenFragments:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 139
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 136
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 142
    :cond_5
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_3
.end method


# virtual methods
.method public varargs addTab(ILandroid/app/ActionBar$Tab;[Landroid/app/Fragment;)V
    .locals 2
    .parameter "position"
    .parameter "tab"
    .parameter "tabFragments"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->tabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {p2, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 84
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 85
    iget-object v1, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->fragmentsOnTab:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 87
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->showFragmentsForCurrentTab(Landroid/app/FragmentTransaction;)V

    .line 88
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 89
    return-void
.end method

.method public varargs addTab(Landroid/app/ActionBar$Tab;[Landroid/app/Fragment;)V
    .locals 1
    .parameter "tab"
    .parameter "tabFragments"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->fragmentsOnTab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->addTab(ILandroid/app/ActionBar$Tab;[Landroid/app/Fragment;)V

    .line 79
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/jd/droidlib/activity/stock/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 63
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/jd/droidlib/activity/stock/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "_curr_tab"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->setCurrentTab(I)V

    .line 75
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/jd/droidlib/activity/stock/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "_curr_tab"

    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method protected onTabChanged(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 106
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 98
    return-void
.end method

.method public setCustomAnimations(II)V
    .locals 0
    .parameter "enter"
    .parameter "exit"

    .prologue
    .line 92
    iput p1, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->enterAnimation:I

    .line 93
    iput p2, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->exitAnimation:I

    .line 94
    return-void
.end method

.method public varargs setFragmentVisible(Z[Landroid/app/Fragment;)V
    .locals 9
    .parameter "visible"
    .parameter "fragments"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 111
    array-length v6, p2

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    .line 127
    return-void

    .line 111
    :cond_0
    aget-object v2, p2, v5

    .line 112
    .local v2, fragment:Landroid/app/Fragment;
    if-eqz p1, :cond_3

    .line 113
    iget-object v3, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->manuallyHiddenFragments:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v3, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->fragmentsOnTab:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->getCurrentTab()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Fragment;

    .line 116
    .local v1, currTabFragments:[Landroid/app/Fragment;
    array-length v7, v1

    move v3, v4

    :goto_1
    if-lt v3, v7, :cond_1

    .line 111
    .end local v1           #currTabFragments:[Landroid/app/Fragment;
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 116
    .restart local v1       #currTabFragments:[Landroid/app/Fragment;
    :cond_1
    aget-object v0, v1, v3

    .line 117
    .local v0, currTabFragment:Landroid/app/Fragment;
    if-ne v2, v0, :cond_2

    .line 118
    new-array v3, v8, [Landroid/app/Fragment;

    aput-object v2, v3, v4

    invoke-super {p0, v8, v3}, Lcom/jd/droidlib/activity/stock/FragmentActivity;->setFragmentVisible(Z[Landroid/app/Fragment;)V

    goto :goto_2

    .line 116
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v0           #currTabFragment:Landroid/app/Fragment;
    .end local v1           #currTabFragments:[Landroid/app/Fragment;
    :cond_3
    iget-object v3, p0, Lcom/jd/droidlib/activity/stock/TabbedFragmentActivity;->manuallyHiddenFragments:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    new-array v3, v8, [Landroid/app/Fragment;

    aput-object v2, v3, v4

    invoke-super {p0, v4, v3}, Lcom/jd/droidlib/activity/stock/FragmentActivity;->setFragmentVisible(Z[Landroid/app/Fragment;)V

    goto :goto_2
.end method
