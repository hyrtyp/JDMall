.class Lcom/jingdong/app/mall/product/ProductFilterActivity$1;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 132
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    const-class v9, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v2, i:Landroid/content/Intent;
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    const-string v9, ""

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity;Ljava/lang/String;)V

    .line 134
    const-string v5, ""

    .line 135
    .local v5, provinceName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 136
    .local v6, selectOrder:I
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, lenth:I
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 159
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x9

    add-int/2addr v3, v8

    .line 160
    :goto_1
    if-gtz v3, :cond_3

    .line 173
    .end local v3           #lenth:I
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/product/ProductFilterActivity;->isHaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$3(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 175
    const-string v8, "stock"

    const-string v9, "have"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    const-string v8, "cid"

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v9, v9, Lcom/jingdong/app/mall/product/ProductFilterActivity;->catelogyId:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v8, "expandSortId"

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$2(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$2(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v8, "name"

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->name:Ljava/lang/String;
    invoke-static {v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$4(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v8, "sortKey"

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->productListSortKey:I
    invoke-static {v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$5(Lcom/jingdong/app/mall/product/ProductFilterActivity;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    new-instance v7, Lcom/jingdong/common/entity/SourceEntity;

    const-string v8, "cateFilter"

    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->name:Ljava/lang/String;
    invoke-static {v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$4(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v7, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v8, "source"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 189
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    const-string v8, "com.360buy:clearHistoryFlag"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 195
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->finish()V

    .line 198
    return-void

    .line 143
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v7           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    .restart local v3       #lenth:I
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 144
    .local v4, object:Ljava/lang/Object;
    instance-of v9, v4, Lcom/jingdong/common/entity/SearchFilter;

    if-nez v9, :cond_2

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 146
    goto/16 :goto_0

    :cond_2
    move-object v1, v4

    .line 148
    check-cast v1, Lcom/jingdong/common/entity/SearchFilter;

    .line 152
    .local v1, catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;
    iget-object v9, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$2(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v1           #catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;
    .end local v4           #object:Ljava/lang/Object;
    :cond_3
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v8}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$2(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0-"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity;Ljava/lang/String;)V

    .line 162
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 168
    .end local v3           #lenth:I
    :cond_4
    iget-object v8, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    const-string v9, "0-0-0-0-0-0-0-0-0-"

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
