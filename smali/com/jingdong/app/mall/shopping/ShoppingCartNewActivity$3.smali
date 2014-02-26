.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, countProduct:I
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteProductDialog(I)V
    invoke-static {v3, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$15(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    .line 166
    return-void

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 156
    .local v2, packSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    const-string v3, "4"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getsType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1
.end method
