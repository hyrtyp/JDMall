.class public Lcom/jd/droidlib/util/intent/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)[Landroid/content/pm/ActivityInfo;
    .locals 5
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 62
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, activities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ActivityInfo;>;"
    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/ActivityInfo;

    return-object v3

    .line 65
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 66
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static gotHandlerForIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "ctx"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static startActivityOrWarn(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 43
    const-string v0, "Error"

    invoke-static {p0, p1, v0}, Lcom/jd/droidlib/util/intent/IntentHelper;->startActivityOrWarn(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static startActivityOrWarn(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "intent"
    .parameter "errorMessage"

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    .line 52
    new-instance v1, Lcom/jd/droidlib/util/ui/AbstractDialogFactory;

    invoke-direct {v1, p0}, Lcom/jd/droidlib/util/ui/AbstractDialogFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/jd/droidlib/util/ui/AbstractDialogFactory;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static startChooserOrWarn(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jd/droidlib/util/intent/IntentHelper;->startChooserOrWarn(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static startChooserOrWarn(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "intent"
    .parameter "title"

    .prologue
    .line 38
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, choooserIntent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/jd/droidlib/util/intent/IntentHelper;->startActivityOrWarn(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    return-void
.end method
