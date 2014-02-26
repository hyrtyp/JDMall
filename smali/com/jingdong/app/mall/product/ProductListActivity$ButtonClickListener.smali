.class Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f0c071c

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 1594
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0c05a6

    if-ne v3, v4, :cond_4

    .line 1597
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v9, :cond_1

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->CURR_STATE:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1598
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->showFilterDialog()V
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$1(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    .line 1728
    :cond_2
    :goto_0
    return-void

    .line 1600
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1603
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->showSeachResult(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$3(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V

    .line 1604
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->hidefloatLayout()V
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$4(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    goto :goto_0

    .line 1611
    .end local v1           #key:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$5(Lcom/jingdong/app/mall/product/ProductListActivity;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1616
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1702
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v4

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->checkSortView(I)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$9(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    :goto_2
    :try_start_1
    const-string v3, "page"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1718
    :goto_3
    :try_start_2
    const-string v3, "keyword"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$10(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1725
    :goto_4
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/ProductListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v3, v4, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$11(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1625
    :pswitch_1
    :try_start_3
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 1626
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const/4 v4, 0x2

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$7(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    .line 1636
    :goto_5
    const-string v3, "searchCatelogy"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "search"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1637
    :cond_5
    const-string v3, "sort"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1704
    :catch_0
    move-exception v0

    .line 1706
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1631
    .end local v0           #e:Lorg/json/JSONException;
    :cond_6
    :try_start_4
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const/4 v4, 0x3

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$7(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    goto :goto_5

    .line 1639
    :cond_7
    const-string v3, "sort"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 1650
    :pswitch_2
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 1654
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const/4 v4, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$7(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    .line 1655
    const-string v3, "searchCatelogy"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "search"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1656
    :cond_8
    const-string v3, "sort"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1658
    :cond_9
    const-string v3, "sort"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1672
    :pswitch_3
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 1676
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const/4 v4, 0x5

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$7(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    .line 1677
    const-string v3, "searchCatelogy"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1678
    const-string v3, "sort"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1680
    :cond_a
    const-string v3, "sort"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1685
    :pswitch_4
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 1689
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    const/4 v4, 0x6

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$7(Lcom/jingdong/app/mall/product/ProductListActivity;I)V

    .line 1690
    const-string v3, "searchCatelogy"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1691
    const-string v3, "sort"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1692
    :cond_b
    const-string v3, "search"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1693
    const-string v3, "sort"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1695
    :cond_c
    const-string v3, "sort"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1710
    :catch_1
    move-exception v0

    .line 1712
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 1719
    .end local v0           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v3

    goto/16 :goto_4

    .line 1616
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c05ab
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
