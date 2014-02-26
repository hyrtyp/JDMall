.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViews()V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 104
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->isClickable:Z
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$9(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 193
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v2, 0x1

    .line 111
    .local v2, hasData:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, holdersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;>;"
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$10(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/GridView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 113
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v6, :cond_3

    .line 118
    if-nez p3, :cond_8

    .line 121
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 123
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->clear()V

    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 132
    const/4 v2, 0x0

    .line 187
    :cond_2
    :goto_3
    if-eqz v2, :cond_e

    .line 188
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->submitBtn:Landroid/widget/Button;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$4(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsGridView:Landroid/widget/GridView;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$10(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/GridView;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    .line 126
    .local v8, viewHolder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    iget-object v10, v8, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->selectedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 127
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
    invoke-static {v10, v11, v8}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$11(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V

    goto :goto_2

    .line 135
    .end local v8           #viewHolder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    :cond_5
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 139
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    .line 140
    .restart local v8       #viewHolder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    iget-object v10, v8, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->unSelectedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 141
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
    invoke-static {v10, v11, v8}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$11(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V

    goto :goto_5

    .line 135
    .end local v8           #viewHolder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    .line 136
    .local v0, category:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v10}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 148
    .end local v0           #category:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    .line 149
    .local v1, clickedHolder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
    invoke-static {v9, v10, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$11(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V

    .line 150
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 152
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 156
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
    invoke-static {v10, v11, v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$11(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V

    .line 160
    :cond_9
    const/4 v2, 0x0

    .line 162
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 163
    .local v7, temp:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 164
    const/4 v2, 0x1

    .line 165
    goto/16 :goto_3

    .line 171
    .end local v7           #temp:Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v5, 0x1

    .line 174
    .local v5, isContainAll:Z
    const/4 v4, 0x1

    :goto_6
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v4, v9, :cond_c

    .line 180
    :goto_7
    if-eqz v5, :cond_2

    .line 181
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->showSelectedOrUnSelectedView(Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V
    invoke-static {v10, v11, v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$11(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Landroid/content/Context;Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V

    goto/16 :goto_3

    .line 175
    :cond_c
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v10

    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 176
    const/4 v5, 0x0

    .line 177
    goto :goto_7

    .line 174
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 190
    .end local v1           #clickedHolder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    .end local v5           #isContainAll:Z
    :cond_e
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->submitBtn:Landroid/widget/Button;
    invoke-static {v9}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$4(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
