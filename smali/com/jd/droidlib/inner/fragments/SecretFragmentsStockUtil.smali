.class public Lcom/jd/droidlib/inner/fragments/SecretFragmentsStockUtil;
.super Lcom/jd/droidlib/inner/fragments/SecretFragmentsUtil;
.source "SecretFragmentsStockUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jd/droidlib/inner/fragments/SecretFragmentsUtil;-><init>()V

    return-void
.end method

.method public static dialogFragmentShowDialogFragment(Landroid/app/Activity;Landroid/app/DialogFragment;)V
    .locals 5
    .parameter "fragmentActivity"
    .parameter "dialogFragment"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 51
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 53
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 54
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static varargs fragmentActivitySetFragmentVisible(Landroid/app/Activity;Z[Landroid/app/Fragment;)V
    .locals 5
    .parameter "fragmentActivity"
    .parameter "visible"
    .parameter "fragments"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 29
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 30
    .local v2, ft:Landroid/app/FragmentTransaction;
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 37
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 38
    return-void

    .line 30
    :cond_0
    aget-object v1, p2, v3

    .line 31
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 30
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public static singleFragmentActivityAddFragmentToContentView(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragmentActivity"
    .parameter "fragment"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 43
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 44
    .local v1, ft:Landroid/app/FragmentTransaction;
    const v2, 0x22528

    invoke-virtual {v1, v2, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 46
    return-void
.end method
