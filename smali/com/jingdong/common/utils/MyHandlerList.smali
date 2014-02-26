.class public Lcom/jingdong/common/utils/MyHandlerList;
.super Ljava/lang/Object;
.source "MyHandlerList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/MyHandlerList$MyHandler;
    }
.end annotation


# instance fields
.field private currentTaskIndex:I

.field private multiThread:Z

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/utils/MyHandlerList$MyHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "multiThread"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/utils/MyHandlerList;->taskList:Ljava/util/List;

    .line 19
    iput-boolean p1, p0, Lcom/jingdong/common/utils/MyHandlerList;->multiThread:Z

    .line 20
    return-void
.end method


# virtual methods
.method public add(Lcom/jingdong/common/utils/MyHandlerList$MyHandler;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jingdong/common/utils/MyHandlerList;->taskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public doLast()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->taskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 51
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->currentTaskIndex:I

    .line 52
    iget-object v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->taskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/utils/MyHandlerList$MyHandler;

    invoke-interface {v1}, Lcom/jingdong/common/utils/MyHandlerList$MyHandler;->run()V

    .line 53
    iget-boolean v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->multiThread:Z

    if-nez v1, :cond_0

    .line 54
    iput v0, p0, Lcom/jingdong/common/utils/MyHandlerList;->currentTaskIndex:I

    .line 56
    :cond_0
    return-void
.end method

.method public doNext()V
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/jingdong/common/utils/MyHandlerList;->currentTaskIndex:I

    .line 37
    .local v0, i:I
    iget v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->currentTaskIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->currentTaskIndex:I

    .line 38
    iget-object v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->taskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->taskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/utils/MyHandlerList$MyHandler;

    invoke-interface {v1}, Lcom/jingdong/common/utils/MyHandlerList$MyHandler;->run()V

    .line 40
    iget-boolean v1, p0, Lcom/jingdong/common/utils/MyHandlerList;->multiThread:Z

    if-nez v1, :cond_0

    .line 41
    iput v0, p0, Lcom/jingdong/common/utils/MyHandlerList;->currentTaskIndex:I

    .line 44
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/jingdong/common/utils/MyHandlerList;->currentTaskIndex:I

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/jingdong/common/utils/MyHandlerList;->doNext()V

    .line 30
    :cond_0
    return-void
.end method
