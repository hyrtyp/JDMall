.class public Lcom/jingdong/common/utils/PriorityCollection;
.super Ljava/util/ArrayList;
.source "PriorityCollection.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/jingdong/common/utils/IPriority;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/jingdong/common/utils/IPriority;",
        ">;",
        "Lcom/jingdong/common/utils/IPriority;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x73efadbc7118efe4L


# instance fields
.field private priority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 16
    .local p0, this:Lcom/jingdong/common/utils/PriorityCollection;,"Lcom/jingdong/common/utils/PriorityCollection<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput p1, p0, Lcom/jingdong/common/utils/PriorityCollection;->priority:I

    .line 18
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "capacity"
    .parameter "priority"

    .prologue
    .line 26
    .local p0, this:Lcom/jingdong/common/utils/PriorityCollection;,"Lcom/jingdong/common/utils/PriorityCollection<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    iput p2, p0, Lcom/jingdong/common/utils/PriorityCollection;->priority:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 0
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/jingdong/common/utils/PriorityCollection;,"Lcom/jingdong/common/utils/PriorityCollection<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    iput p2, p0, Lcom/jingdong/common/utils/PriorityCollection;->priority:I

    .line 23
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/jingdong/common/utils/IPriority;)I
    .locals 2
    .parameter "priority"

    .prologue
    .line 32
    .local p0, this:Lcom/jingdong/common/utils/PriorityCollection;,"Lcom/jingdong/common/utils/PriorityCollection<TT;>;"
    invoke-virtual {p0}, Lcom/jingdong/common/utils/PriorityCollection;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/jingdong/common/utils/IPriority;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/common/utils/PriorityCollection;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/jingdong/common/utils/IPriority;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jingdong/common/utils/IPriority;

    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/PriorityCollection;->compareTo(Lcom/jingdong/common/utils/IPriority;)I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/jingdong/common/utils/PriorityCollection;,"Lcom/jingdong/common/utils/PriorityCollection<TT;>;"
    iget v0, p0, Lcom/jingdong/common/utils/PriorityCollection;->priority:I

    return v0
.end method
