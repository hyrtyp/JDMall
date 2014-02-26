.class public abstract Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;
.super Lcom/jd/droidlib/adapter/cursor/CursorAdapter;
.source "EntityCursorAdapter.java"

# interfaces
.implements Lcom/jd/droidlib/contract/AlterableContent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EntityType:",
        "Lcom/jd/droidlib/model/Entity;",
        ">",
        "Lcom/jd/droidlib/adapter/cursor/CursorAdapter;",
        "Lcom/jd/droidlib/contract/AlterableContent",
        "<",
        "Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect",
        "<TEntityType;>;>;"
    }
.end annotation


# instance fields
.field protected final entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jd/droidlib/persist/sql/EntityManager",
            "<TEntityType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TEntityType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    .local p1, entityCls:Ljava/lang/Class;,"Ljava/lang/Class<TEntityType;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TEntityType;>;",
            "Landroid/content/Context;",
            "Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect",
            "<TEntityType;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    .local p1, entityCls:Ljava/lang/Class;,"Ljava/lang/Class<TEntityType;>;"
    .local p3, select:Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;,"Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect<TEntityType;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;->execute()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/jd/droidlib/adapter/cursor/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 39
    new-instance v0, Lcom/jd/droidlib/persist/sql/EntityManager;

    invoke-direct {v0, p1, p2}, Lcom/jd/droidlib/persist/sql/EntityManager;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requeryOnSuccess(Z)Z
    .locals 0
    .parameter "success"

    .prologue
    .line 77
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->requeryData()V

    .line 80
    :cond_0
    return p1
.end method


# virtual methods
.method public abstract bindView(Landroid/content/Context;Landroid/view/View;Lcom/jd/droidlib/model/Entity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "TEntityType;)V"
        }
    .end annotation
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 49
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    iget-object v0, p0, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;

    invoke-virtual {v0, p3}, Lcom/jd/droidlib/persist/sql/EntityManager;->readRow(Landroid/database/Cursor;)Lcom/jd/droidlib/model/Entity;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->bindView(Landroid/content/Context;Landroid/view/View;Lcom/jd/droidlib/model/Entity;)V

    .line 50
    return-void
.end method

.method public create(Lcom/jd/droidlib/model/Entity;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntityType;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    .local p1, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    iget-object v1, p0, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;

    invoke-virtual {v1, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;->create(Lcom/jd/droidlib/model/Entity;)Z

    move-result v0

    .line 56
    .local v0, success:Z
    invoke-direct {p0, v0}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->requeryOnSuccess(Z)Z

    move-result v1

    return v1
.end method

.method public delete(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 71
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->getItemId(I)J

    move-result-wide v0

    .line 72
    .local v0, id:J
    iget-object v3, p0, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;

    invoke-virtual {v3, v0, v1}, Lcom/jd/droidlib/persist/sql/EntityManager;->delete(J)Z

    move-result v2

    .line 73
    .local v2, success:Z
    invoke-direct {p0, v2}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->requeryOnSuccess(Z)Z

    move-result v3

    return v3
.end method

.method public read(I)Lcom/jd/droidlib/model/Entity;
    .locals 4
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TEntityType;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    invoke-virtual {p0, p1}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->getItemId(I)J

    move-result-wide v0

    .line 61
    .local v0, id:J
    iget-object v3, p0, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;

    invoke-virtual {v3, v0, v1}, Lcom/jd/droidlib/persist/sql/EntityManager;->read(J)Lcom/jd/droidlib/model/Entity;

    move-result-object v2

    .line 62
    .local v2, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    return-object v2
.end method

.method public setContent(Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect",
            "<TEntityType;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    .local p1, select:Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;,"Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect<TEntityType;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;->execute()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setContent(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;

    invoke-virtual {p0, p1}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->setContent(Lcom/jd/droidlib/persist/sql/stmt/AbstractSelect;)V

    return-void
.end method

.method public update(Lcom/jd/droidlib/model/Entity;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntityType;)Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;,"Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter<TEntityType;>;"
    .local p1, item:Lcom/jd/droidlib/model/Entity;,"TEntityType;"
    iget-object v1, p0, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->entityManager:Lcom/jd/droidlib/persist/sql/EntityManager;

    invoke-virtual {v1, p1}, Lcom/jd/droidlib/persist/sql/EntityManager;->update(Lcom/jd/droidlib/model/Entity;)Z

    move-result v0

    .line 67
    .local v0, success:Z
    invoke-direct {p0, v0}, Lcom/jd/droidlib/adapter/cursor/EntityCursorAdapter;->requeryOnSuccess(Z)Z

    move-result v1

    return v1
.end method
