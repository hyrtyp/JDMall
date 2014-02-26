.class public Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;
.super Ljava/lang/Object;
.source "MergeSelect.java"

# interfaces
.implements Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EntityType:",
        "Lcom/jd/droidlib/model/Entity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect",
        "<TEntityType;>;"
    }
.end annotation


# instance fields
.field private final selects:[Lcom/jd/droidlib/persist/sql/stmt/Select;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/jd/droidlib/persist/sql/stmt/Select",
            "<TEntityType;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/jd/droidlib/persist/sql/stmt/Select;)V
    .locals 0
    .parameter "selects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jd/droidlib/persist/sql/stmt/Select",
            "<TEntityType;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;,"Lcom/jd/droidlib/persist/sql/stmt/MergeSelect<TEntityType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;->selects:[Lcom/jd/droidlib/persist/sql/stmt/Select;

    .line 30
    return-void
.end method


# virtual methods
.method public count()I
    .locals 6

    .prologue
    .line 43
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;,"Lcom/jd/droidlib/persist/sql/stmt/MergeSelect<TEntityType;>;"
    const/4 v0, 0x0

    .line 44
    .local v0, count:I
    iget-object v3, p0, Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;->selects:[Lcom/jd/droidlib/persist/sql/stmt/Select;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 47
    return v0

    .line 44
    :cond_0
    aget-object v1, v3, v2

    .line 45
    .local v1, select:Lcom/jd/droidlib/persist/sql/stmt/Select;,"Lcom/jd/droidlib/persist/sql/stmt/Select<TEntityType;>;"
    invoke-virtual {v1}, Lcom/jd/droidlib/persist/sql/stmt/Select;->count()I

    move-result v5

    add-int/2addr v0, v5

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public execute()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 34
    .local p0, this:Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;,"Lcom/jd/droidlib/persist/sql/stmt/MergeSelect<TEntityType;>;"
    iget-object v2, p0, Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;->selects:[Lcom/jd/droidlib/persist/sql/stmt/Select;

    array-length v2, v2

    new-array v0, v2, [Landroid/database/Cursor;

    .line 35
    .local v0, cursors:[Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 38
    new-instance v2, Landroid/database/MergeCursor;

    invoke-direct {v2, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v2

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/jd/droidlib/persist/sql/stmt/MergeSelect;->selects:[Lcom/jd/droidlib/persist/sql/stmt/Select;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jd/droidlib/persist/sql/stmt/Select;->execute()Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
