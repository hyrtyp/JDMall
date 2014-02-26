.class Lcom/jingdong/app/mall/more/SearchActivity$9;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$9;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 424
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 425
    .local v2, obj:Ljava/lang/Object;
    const-string v3, ""

    .line 426
    .local v3, word:Ljava/lang/String;
    const/4 v1, 0x0

    .line 427
    .local v1, isHotWord:Z
    instance-of v4, v2, Lcom/jingdong/common/entity/Keyword;

    if-eqz v4, :cond_1

    .line 428
    check-cast v2, Lcom/jingdong/common/entity/Keyword;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    .line 429
    const/4 v1, 0x1

    .line 436
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/more/SearchActivity$9;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;Z)V
    invoke-static {v4, v3, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$4(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;Z)V

    .line 437
    return-void

    .line 430
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lcom/jingdong/common/entity/SearchHistory;

    if-eqz v4, :cond_0

    .line 431
    check-cast v2, Lcom/jingdong/common/entity/SearchHistory;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/SearchHistory;->getWord()Ljava/lang/String;

    move-result-object v3

    .line 432
    const/4 v1, 0x0

    goto :goto_0
.end method
