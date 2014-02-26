.class public Lcom/jd/droidlib/widget/MultiSelectListPreference;
.super Landroid/preference/ListPreference;
.source "MultiSelectListPreference.java"


# static fields
.field private static final SEP:Ljava/lang/String; = "|"


# instance fields
.field private checkedEntryIndexes:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/jd/droidlib/widget/MultiSelectListPreference;)[Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference;->checkedEntryIndexes:[Z

    return-object v0
.end method

.method public static fromPersistedPreferenceValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "val"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/jd/droidlib/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs toPersistedPreferenceValue([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .parameter "entryKeys"

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 45
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 46
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 47
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateCheckedEntryIndexes()V
    .locals 6

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 124
    .local v1, entryVals:[Ljava/lang/CharSequence;
    array-length v4, v1

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference;->checkedEntryIndexes:[Z

    .line 125
    invoke-virtual {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, val:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashSet;

    .line 128
    invoke-static {v3}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->fromPersistedPreferenceValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 127
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v0, checkedEntryVals:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 134
    .end local v0           #checkedEntryVals:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2           #i:I
    :cond_0
    return-void

    .line 130
    .restart local v0       #checkedEntryVals:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2       #i:I
    :cond_1
    iget-object v4, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference;->checkedEntryIndexes:[Z

    .line 131
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 130
    aput-boolean v5, v4, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCheckedEntries()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 55
    .local v1, entries:[Ljava/lang/CharSequence;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, checkedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    return-object v3

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference;->checkedEntryIndexes:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 58
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 108
    .local v1, entryVals:[Ljava/lang/CharSequence;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, checkedVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    .line 114
    invoke-static {v4}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->toPersistedPreferenceValue([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, val:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {p0, v3}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 120
    .end local v0           #checkedVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1           #entryVals:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #val:Ljava/lang/String;
    :cond_0
    return-void

    .line 110
    .restart local v0       #checkedVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v1       #entryVals:[Ljava/lang/CharSequence;
    .restart local v2       #i:I
    :cond_1
    iget-object v4, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference;->checkedEntryIndexes:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_2

    .line 111
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->updateCheckedEntryIndexes()V

    .line 93
    invoke-virtual {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference;->checkedEntryIndexes:[Z

    .line 94
    new-instance v2, Lcom/jd/droidlib/widget/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference$1;-><init>(Lcom/jd/droidlib/widget/MultiSelectListPreference;)V

    .line 93
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->updateCheckedEntryIndexes()V

    .line 82
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->updateCheckedEntryIndexes()V

    .line 88
    return-void
.end method
