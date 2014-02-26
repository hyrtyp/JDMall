.class public Lcom/jd/droidlib/inner/reader/ViewAndPreferenceReader;
.super Ljava/lang/Object;
.source "ViewAndPreferenceReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readVal(Landroid/content/Context;Landroid/view/View;IZLjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "ctx"
    .parameter "rootView"
    .parameter "viewOrPrefId"
    .parameter "click"
    .parameter "target"
    .parameter
    .parameter "valName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "IZ",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    .local p5, valType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 32
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null View."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 34
    :cond_0
    const-class v5, Landroid/view/View;

    invoke-virtual {v5, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 35
    .local v2, isView:Z
    const-class v5, Landroid/preference/Preference;

    invoke-virtual {v5, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 36
    .local v1, isPreference:Z
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 37
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not a View or Preference \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_1
    if-nez p2, :cond_2

    .line 41
    if-eqz v2, :cond_4

    .line 42
    invoke-static {p0, p6}, Lcom/jd/droidlib/util/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 48
    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 54
    :goto_1
    if-eqz v4, :cond_a

    .line 55
    if-eqz p3, :cond_3

    .line 56
    if-eqz v2, :cond_7

    .line 57
    instance-of v5, p4, Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_6

    move-object v5, v4

    .line 58
    check-cast v5, Landroid/view/View;

    .line 59
    check-cast p4, Landroid/view/View$OnClickListener;

    .end local p4
    invoke-virtual {v5, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_3
    :goto_2
    return-object v4

    .line 44
    .restart local p4
    :cond_4
    invoke-static {p0, p6}, Lcom/jd/droidlib/util/ResourceUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_5
    move-object v5, p0

    .line 51
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 52
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 51
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .local v4, val:Landroid/preference/Preference;
    goto :goto_1

    .line 61
    .end local v4           #val:Landroid/preference/Preference;
    :cond_6
    const-string v5, "Failed to set OnClickListener"

    invoke-static {v5}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_2

    .line 64
    :cond_7
    const/4 v0, 0x0

    .local v0, done:Z
    move-object v3, v4

    .line 65
    check-cast v3, Landroid/preference/Preference;

    .line 66
    .local v3, pref:Landroid/preference/Preference;
    instance-of v5, p4, Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v5, :cond_8

    move-object v5, p4

    .line 67
    check-cast v5, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    const/4 v0, 0x1

    .line 70
    :cond_8
    instance-of v5, p4, Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v5, :cond_9

    .line 71
    check-cast p4, Landroid/preference/Preference$OnPreferenceChangeListener;

    .end local p4
    invoke-virtual {v3, p4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const/4 v0, 0x1

    .line 74
    :cond_9
    if-nez v0, :cond_3

    .line 75
    const-string v5, "Failed to set OnPreferenceClickListener or OnPreferenceChangeListener."

    invoke-static {v5}, Lcom/jd/droidlib/util/L;->w(Ljava/lang/Object;)V

    goto :goto_2

    .line 81
    .end local v0           #done:Z
    .end local v3           #pref:Landroid/preference/Preference;
    .restart local p4
    :cond_a
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "View or Preference not found for id."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method
