.class Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleBeanAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/SimpleBeanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;-><init>(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 18
    .parameter "prefix"

    .prologue
    .line 660
    new-instance v10, Landroid/widget/Filter$FilterResults;

    invoke-direct {v10}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 662
    .local v10, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mUnfilteredData:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$0(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;
    invoke-static/range {v17 .. v17}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$1(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/List;

    move-result-object v17

    #setter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mUnfilteredData:Ljava/util/List;
    invoke-static/range {v16 .. v17}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$2(Lcom/jingdong/common/utils/SimpleBeanAdapter;Ljava/util/List;)V

    .line 666
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_2

    .line 667
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mUnfilteredData:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$0(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/List;

    move-result-object v7

    .line 668
    .local v7, list:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object v7, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 669
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, Landroid/widget/Filter$FilterResults;->count:I

    .line 711
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :goto_0
    return-object v10

    .line 671
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 673
    .local v9, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mUnfilteredData:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$0(Lcom/jingdong/common/utils/SimpleBeanAdapter;)Ljava/util/List;

    move-result-object v12

    .line 674
    .local v12, unfilteredValues:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    .line 676
    .local v1, count:I
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 678
    .local v8, newValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_3

    .line 707
    iput-object v8, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 708
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 679
    :cond_3
    const/4 v2, 0x0

    .line 681
    .local v2, h:Ljava/lang/Object;
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 683
    if-eqz v2, :cond_4

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mTo:[I
    invoke-static/range {v16 .. v16}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$3(Lcom/jingdong/common/utils/SimpleBeanAdapter;)[I

    move-result-object v16

    move-object/from16 v0, v16

    array-length v6, v0

    .line 687
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-lt v4, v6, :cond_5

    .line 678
    .end local v4           #j:I
    .end local v6           #len:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 688
    .restart local v4       #j:I
    .restart local v6       #len:I
    :cond_5
    const/4 v11, 0x0

    .line 690
    .local v11, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mFrom:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$4(Lcom/jingdong/common/utils/SimpleBeanAdapter;)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/jingdong/common/utils/BeanUtil;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #str:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 692
    .restart local v11       #str:Ljava/lang/String;
    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 693
    .local v15, words:[Ljava/lang/String;
    array-length v14, v15

    .line 695
    .local v14, wordCount:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    if-lt v5, v14, :cond_6

    .line 687
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 696
    :cond_6
    aget-object v13, v15, v5

    .line 698
    .local v13, word:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 699
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 695
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 717
    iget-object v1, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/jingdong/common/utils/SimpleBeanAdapter;->mData:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->access$5(Lcom/jingdong/common/utils/SimpleBeanAdapter;Ljava/util/List;)V

    .line 718
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetChanged()V

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/utils/SimpleBeanAdapter$SimpleFilter;->this$0:Lcom/jingdong/common/utils/SimpleBeanAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
