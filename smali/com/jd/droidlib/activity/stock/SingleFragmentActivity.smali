.class public abstract Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;
.super Lcom/jd/droidlib/activity/stock/FragmentActivity;
.source "SingleFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/app/Fragment;",
        ">",
        "Lcom/jd/droidlib/activity/stock/FragmentActivity;"
    }
.end annotation


# instance fields
.field private fragment:Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, this:Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;,"Lcom/jd/droidlib/activity/stock/SingleFragmentActivity<TF;>;"
    invoke-direct {p0}, Lcom/jd/droidlib/activity/stock/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragment()Landroid/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;,"Lcom/jd/droidlib/activity/stock/SingleFragmentActivity<TF;>;"
    iget-object v0, p0, Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    .local p0, this:Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;,"Lcom/jd/droidlib/activity/stock/SingleFragmentActivity<TF;>;"
    invoke-super {p0, p1}, Lcom/jd/droidlib/activity/stock/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;->onCreateFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;->fragment:Landroid/app/Fragment;

    .line 38
    iget-object v0, p0, Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;->fragment:Landroid/app/Fragment;

    invoke-static {p0, v0}, Lcom/jd/droidlib/inner/fragments/SecretFragmentsStockUtil;->singleFragmentActivityAddFragmentToContentView(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 39
    return-void
.end method

.method protected abstract onCreateFragment()Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public onPreInject()V
    .locals 0

    .prologue
    .line 30
    .local p0, this:Lcom/jd/droidlib/activity/stock/SingleFragmentActivity;,"Lcom/jd/droidlib/activity/stock/SingleFragmentActivity<TF;>;"
    invoke-static {p0}, Lcom/jd/droidlib/inner/fragments/SecretFragmentsStockUtil;->singleFragmentActivitySetContentView(Landroid/app/Activity;)V

    .line 31
    return-void
.end method
