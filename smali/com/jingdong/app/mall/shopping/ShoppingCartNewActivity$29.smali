.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createPackView(Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

.field private final synthetic val$childNumEt:Landroid/widget/TextView;

.field private final synthetic val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

.field private final synthetic val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$childNumEt:Landroid/widget/TextView;

    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(I)V
    .locals 15
    .parameter "num"

    .prologue
    .line 1069
    move/from16 v4, p1

    .line 1071
    .local v4, newNum:I
    const/4 v10, 0x0

    .line 1073
    .local v10, numChange:Z
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1075
    .local v14, suitChildItemSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v14, :cond_1

    .line 1083
    :goto_1
    if-nez v10, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->removeEditObject(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$34(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1123
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    const/4 v5, 0x4

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->productNumChange(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V

    .line 1125
    return-void

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 1077
    .local v6, childSku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 1078
    const/4 v10, 0x1

    .line 1079
    goto :goto_1

    .line 1075
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1087
    .end local v6           #childSku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :cond_3
    const/16 v0, 0x3e8

    if-le v4, v0, :cond_4

    .line 1088
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1089
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$childNumEt:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    const v1, 0x7f0704b6

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$2(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    .line 1092
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->removeEditObject(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$34(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1095
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 1097
    .local v11, packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    if-nez v11, :cond_5

    .line 1098
    new-instance v11, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .end local v11           #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v0, v1, v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1099
    .restart local v11       #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v13, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1100
    .local v13, skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v11, v13}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 1101
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1104
    .end local v13           #skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_5
    invoke-virtual {v11}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1106
    .local v12, skuSize:I
    const/4 v8, 0x0

    .line 1107
    .local v8, isFind:Z
    const/4 v9, 0x0

    .local v9, k:I
    :goto_3
    if-lt v9, v12, :cond_6

    .line 1116
    if-nez v8, :cond_0

    .line 1117
    new-instance v13, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    .restart local v13       #skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v11, v13}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    goto/16 :goto_2

    .line 1108
    .end local v13           #skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_6
    invoke-virtual {v11}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 1110
    .local v6, childSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->setNum(Ljava/lang/Integer;)V

    .line 1112
    const/4 v8, 0x1

    .line 1107
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public onError()V
    .locals 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$suitItem:Lcom/jingdong/common/entity/cart/CartResponseSuit;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;->val$crs:Lcom/jingdong/common/entity/cart/CartResponseSku;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->removeEditObject(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$34(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    return-void
.end method
