.class Lcom/jingdong/app/mall/product/SearchFilterActivity$1;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 881
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    const v13, 0x7f0c071c

    if-ne v12, v13, :cond_4

    .line 888
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$0(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$0(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1a

    .line 890
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$0(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$13(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$13(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 983
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$13(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_15

    .line 1003
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->remember:Z
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$16(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Z

    move-result v12

    if-eqz v12, :cond_19

    const-string v12, "1"

    :goto_2
    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->rememberRegion:Ljava/lang/String;
    invoke-static {v13, v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$12(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v13, ""

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$17(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$18(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryId:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$19(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$17(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$18(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->region:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$20(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$17(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$18(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->distribution:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$21(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$17(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$18(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->rememberRegion:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$22(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$17(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$18(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->provinceName:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$23(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$17(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 1017
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-class v13, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1019
    .local v7, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1020
    .local v1, bundle:Landroid/os/Bundle;
    const-string v12, "com.360buy:clearHistoryFlag"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1021
    const-string v12, "keyWord"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$24(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v12, "searchOldId"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$18(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v12, "filterName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->filterName:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$25(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v12, "field"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->field:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$26(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v12, "price"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->price:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$27(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v12, "priceId"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->priceId:I
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$28(Lcom/jingdong/app/mall/product/SearchFilterActivity;)I

    move-result v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1028
    const-string v12, "expressionKeyMap"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$6(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1029
    const-string v12, "expandNameMap"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$8(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1033
    const-string v12, "expressionKeyIdMap"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$7(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1034
    const-string v12, "expandNameIdMap"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$9(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1035
    const-string v12, "category_filter"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v13, v13, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mCategoryFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1037
    const-string v12, "sortKey"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->productListSortKey:I
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$29(Lcom/jingdong/app/mall/product/SearchFilterActivity;)I

    move-result v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v12, v12, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$30(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1040
    const-string v12, "stock"

    const-string v13, "have"

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_3
    new-instance v10, Lcom/jingdong/common/entity/SourceEntity;

    const-string v12, "searchFilter"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$24(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .local v10, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v12, "source"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1054
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1057
    const-string v12, "com.360buy:clearHistoryFlag"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1059
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const/4 v13, -0x1

    invoke-virtual {v12, v13, v7}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->finish()V

    .line 1087
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :cond_4
    :goto_3
    return-void

    .line 890
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 891
    .local v8, object:Ljava/lang/Object;
    instance-of v12, v8, Lcom/jingdong/common/entity/SearchFilter;

    if-eqz v12, :cond_0

    move-object v9, v8

    .line 894
    check-cast v9, Lcom/jingdong/common/entity/SearchFilter;

    .line 895
    .local v9, searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_11

    .line 897
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    .line 898
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedItem()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedItem()Ljava/lang/String;

    move-result-object v12

    :goto_4
    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryId:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$1(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v15

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v12, v15, v0}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_5
    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->filterName:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$2(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 903
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFieldList()[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFieldList()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v15

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->field:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$3(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    :cond_6
    const-string v12, "0"

    goto :goto_4

    .line 899
    :cond_7
    const-string v12, ""

    goto :goto_5

    .line 906
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, ""

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->field:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$3(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 911
    :cond_9
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x5

    if-ne v12, v14, :cond_b

    .line 912
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v12

    if-eqz v12, :cond_a

    .line 913
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v15

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->price:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$4(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v14

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->priceId:I
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$5(Lcom/jingdong/app/mall/product/SearchFilterActivity;I)V

    goto/16 :goto_0

    .line 917
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, "0"

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->price:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$4(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const/4 v14, 0x0

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->priceId:I
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$5(Lcom/jingdong/app/mall/product/SearchFilterActivity;I)V

    goto/16 :goto_0

    .line 921
    :cond_b
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x6

    if-ne v12, v14, :cond_e

    .line 922
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v12

    if-eqz v12, :cond_c

    .line 923
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v5

    .line 924
    .local v5, expressionKeySelectedString:I
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    invoke-static {v12, v5, v14}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 930
    .local v6, expressionKeyString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$6(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$7(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 933
    .end local v5           #expressionKeySelectedString:I
    .end local v6           #expressionKeyString:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$6(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 934
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$6(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$7(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$7(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 941
    :cond_e
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x7

    if-ne v12, v14, :cond_0

    .line 942
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v12

    if-eqz v12, :cond_f

    .line 944
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v3

    .line 945
    .local v3, expandNameSelectedString:I
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    invoke-static {v12, v3, v14}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, expandNameValueIdString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$8(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$9(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 955
    .end local v3           #expandNameSelectedString:I
    .end local v4           #expandNameValueIdString:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$8(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 956
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$8(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$9(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 959
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$9(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 968
    :cond_11
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_12

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, "0"

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryId:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$1(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, ""

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->filterName:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$2(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, ""

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->field:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$3(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    :cond_12
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_13

    .line 973
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, "0"

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->region:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$10(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    :cond_13
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x3

    if-ne v12, v14, :cond_14

    .line 975
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, "0"

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->distribution:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$11(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 977
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const-string v14, "0"

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->rememberRegion:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$12(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 983
    .end local v8           #object:Ljava/lang/Object;
    .end local v9           #searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    :cond_15
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/SearchFilter;

    .line 984
    .restart local v9       #searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_17

    .line 985
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedItem()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedItem()Ljava/lang/String;

    move-result-object v12

    :goto_6
    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->region:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$10(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v15

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->provinceName:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$14(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    .line 987
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v11

    .line 989
    .local v11, which:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I
    invoke-static {v12, v11}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$15(Lcom/jingdong/app/mall/product/SearchFilterActivity;I)V

    goto/16 :goto_1

    .line 985
    .end local v11           #which:I
    :cond_16
    const-string v12, "0"

    goto :goto_6

    .line 994
    :cond_17
    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v12

    const/4 v14, 0x3

    if-ne v12, v14, :cond_1

    .line 995
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedItem()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_18

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedItem()Ljava/lang/String;

    move-result-object v12

    :goto_7
    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->distribution:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$11(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    const-string v12, "0"

    goto :goto_7

    .line 1003
    .end local v9           #searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    :cond_19
    const-string v12, "0"

    goto/16 :goto_2

    .line 1063
    :cond_1a
    new-instance v2, Lcom/jingdong/app/mall/product/SearchFilterActivity$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$1$1;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity$1;)V

    .line 1074
    .local v2, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const v13, 0x7f0701a9

    invoke-virtual {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const v13, 0x7f07021c

    invoke-virtual {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const v13, 0x7f07014d

    invoke-virtual {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v2, v12}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    new-instance v13, Lcom/jingdong/app/mall/product/SearchFilterActivity$1$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity$1$2;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity$1;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    invoke-virtual {v12, v13}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_3
.end method
