.class public Lcom/jd/droidlib/inner/reader/NativeFragmentsReader;
.super Ljava/lang/Object;
.source "NativeFragmentsReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFragment(Ljava/lang/Object;ILjava/lang/String;)Landroid/app/Fragment;
    .locals 2
    .parameter "fragmentActivityObj"
    .parameter "fragmentId"
    .parameter "valName"

    .prologue
    .line 33
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 34
    .local v0, fragmentActivity:Landroid/app/Activity;
    if-nez p1, :cond_0

    .line 35
    invoke-static {v0, p2}, Lcom/jd/droidlib/util/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method static getFragmentArguments(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .parameter "fragmentObj"

    .prologue
    .line 42
    check-cast p0, Landroid/app/Fragment;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static getParentActivity(Ljava/lang/Object;)Landroid/app/Activity;
    .locals 2
    .parameter "fragmentObj"

    .prologue
    .line 27
    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    .line 28
    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method
