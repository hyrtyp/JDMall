.class public Lcom/jd/droidlib/inner/reader/ResourceReader;
.super Ljava/lang/Object;
.source "ResourceReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readVal(Landroid/content/Context;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "ctx"
    .parameter "resId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    .local p2, valType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    .local v0, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 32
    .local v2, val:Ljava/lang/Object;
    invoke-static {p2}, Lcom/jd/droidlib/inner/TypeHelper;->isBoolean(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 48
    .end local v2           #val:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 49
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported resource type \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 34
    .restart local v2       #val:Ljava/lang/Object;
    :cond_1
    invoke-static {p2}, Lcom/jd/droidlib/inner/TypeHelper;->isInteger(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    .local v2, val:Ljava/lang/Integer;
    goto :goto_0

    .local v2, val:Ljava/lang/Object;
    :cond_2
    invoke-static {p2}, Lcom/jd/droidlib/inner/TypeHelper;->isString(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 37
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, val:Ljava/lang/String;
    goto :goto_0

    .local v2, val:Ljava/lang/Object;
    :cond_3
    invoke-static {p2}, Lcom/jd/droidlib/inner/TypeHelper;->isDrawable(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 39
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 40
    .local v2, val:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .local v2, val:Ljava/lang/Object;
    :cond_4
    invoke-static {p2}, Lcom/jd/droidlib/inner/TypeHelper;->isArray(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/jd/droidlib/inner/TypeHelper;->isInteger(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 43
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 44
    .local v2, val:[I
    goto :goto_0

    .local v2, val:Ljava/lang/Object;
    :cond_5
    invoke-static {v1}, Lcom/jd/droidlib/inner/TypeHelper;->isString(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, val:[Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v1           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #val:[Ljava/lang/String;
    :cond_6
    return-object v2
.end method
