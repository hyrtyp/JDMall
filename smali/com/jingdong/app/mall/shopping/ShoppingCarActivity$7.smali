.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->showPacksView(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

.field private final synthetic val$packItems:Lcom/jingdong/common/utils/JSONArrayPoxy;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->val$packItems:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 833
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 839
    .local v9, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0c0680

    invoke-virtual/range {v17 .. v18}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 840
    .local v13, linPack:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0c01f1

    invoke-virtual/range {v17 .. v18}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 841
    .local v12, lin:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->listView:Ljava/util/ArrayList;

    .line 844
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 849
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->val$packItems:Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_0

    .line 915
    return-void

    .line 851
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->val$packItems:Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v15

    .line 854
    .local v15, packItem:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v15, :cond_1

    :try_start_0
    const-string v17, "SuitType"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_1

    const-string v17, "SuitType"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 855
    const-string v17, "Skus"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v10

    .line 856
    .local v10, itemSkus:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v10, :cond_1

    .line 857
    const v17, 0x7f0300c7

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 858
    .local v16, titleView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addPackTitleView(Landroid/view/View;Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    invoke-static {v0, v1, v15, v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$21(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/view/View;Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 859
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 861
    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    invoke-virtual {v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_2

    .line 897
    const v17, 0x7f0300c4

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 898
    .local v4, edtView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    const-string v18, "Num"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addEditView(Landroid/view/View;ILcom/jingdong/common/utils/JSONObjectProxy;I)V
    invoke-static {v0, v4, v1, v15, v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$23(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/view/View;ILcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 901
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 849
    .end local v4           #edtView:Landroid/view/View;
    .end local v8           #index:I
    .end local v10           #itemSkus:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v16           #titleView:Landroid/view/View;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 863
    .restart local v8       #index:I
    .restart local v10       #itemSkus:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v16       #titleView:Landroid/view/View;
    :cond_2
    const v17, 0x7f0300c1

    const/16 v18, 0x0

    :try_start_2
    invoke-static/range {v17 .. v18}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 865
    .local v11, layout:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->listView:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-object/from16 v17, v0

    invoke-virtual {v10, v8}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addPackView(Lcom/jingdong/common/utils/JSONObjectProxy;ILandroid/view/View;)V
    invoke-static {v0, v1, v8, v11}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$22(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONObjectProxy;ILandroid/view/View;)V

    .line 867
    rem-int/lit8 v17, v8, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 868
    const v17, 0x7f02025c

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 874
    :goto_3
    :try_start_3
    invoke-virtual {v10, v8}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v17

    const-string v18, "Id"

    invoke-virtual/range {v17 .. v18}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 875
    .local v6, id:J
    invoke-virtual {v10, v8}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v17

    const-string v18, "Name"

    invoke-virtual/range {v17 .. v18}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 877
    .local v14, name:Ljava/lang/String;
    new-instance v17, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7, v14}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;JLjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 895
    .end local v6           #id:J
    .end local v14           #name:Ljava/lang/String;
    :goto_4
    :try_start_4
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 861
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 870
    :cond_3
    const v17, 0x7f02025e

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 908
    .end local v8           #index:I
    .end local v10           #itemSkus:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v11           #layout:Landroid/view/View;
    .end local v16           #titleView:Landroid/view/View;
    :catch_0
    move-exception v2

    .line 910
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 891
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v8       #index:I
    .restart local v10       #itemSkus:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v11       #layout:Landroid/view/View;
    .restart local v16       #titleView:Landroid/view/View;
    :catch_1
    move-exception v3

    .line 893
    .local v3, e1:Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 902
    .end local v3           #e1:Lorg/json/JSONException;
    .end local v11           #layout:Landroid/view/View;
    .restart local v4       #edtView:Landroid/view/View;
    :catch_2
    move-exception v2

    .line 904
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method
