.class public Lcom/jd/droidlib/inner/fragments/SecretFragmentsSupportUtil;
.super Lcom/jd/droidlib/inner/fragments/SecretFragmentsUtil;
.source "SecretFragmentsSupportUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jd/droidlib/inner/fragments/SecretFragmentsUtil;-><init>()V

    return-void
.end method

.method public static dialogFragmentShowDialogFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/DialogFragment;)V
    .locals 5
    .parameter "fragmentActivity"
    .parameter "dialogFragment"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 52
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, tag:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 54
    .local v2, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public static varargs fragmentActivitySetFragmentVisible(Landroid/support/v4/app/FragmentActivity;Z[Landroid/support/v4/app/Fragment;)V
    .locals 5
    .parameter "fragmentActivity"
    .parameter "visible"
    .parameter "fragments"

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 30
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 31
    .local v2, ft:Landroid/support/v4/app/FragmentTransaction;
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 38
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 39
    return-void

    .line 31
    :cond_0
    aget-object v1, p2, v3

    .line 32
    .local v1, fragment:Landroid/support/v4/app/Fragment;
    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 31
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public static singleFragmentActivityAddFragmentToContentView(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter "fragmentActivity"
    .parameter "fragment"

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 44
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 45
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x22528

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    return-void
.end method
