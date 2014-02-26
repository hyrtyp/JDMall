.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->showMyCartList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "httpResponse"

    .prologue
    .line 652
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    const-string v8, "cartInfo"

    invoke-virtual {v7, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$8(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 653
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFee:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$9(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Ljava/lang/String;)V

    .line 656
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Skus"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$11(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 657
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v6, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$12(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 658
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$12(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 661
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "Suits"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 662
    .local v3, jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    new-instance v2, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    .line 663
    .local v2, jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v3, :cond_0

    .line 664
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v6, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 666
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 667
    const/4 v5, 0x0

    sput-object v5, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 668
    new-instance v5, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    sput-object v5, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 670
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 697
    .end local v4           #k:I
    :cond_0
    const/4 v2, 0x0

    .line 698
    const/4 v3, 0x0

    .line 699
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "Gifts"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-nez v5, :cond_c

    .line 700
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$17(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 701
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 702
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v5, :cond_1

    .line 703
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Lcom/jingdong/common/utils/DBHelperUtil;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-direct {v6, v7}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 705
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 706
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 707
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 708
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 710
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 711
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v5, :cond_3

    .line 712
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Lcom/jingdong/common/utils/DBHelperUtil;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-direct {v6, v7}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 714
    :cond_3
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 715
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 741
    .end local v2           #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_4
    :goto_1
    return-void

    .line 671
    .restart local v2       #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v3       #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v4       #k:I
    :cond_5
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "SuitType"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "SuitType"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_a

    .line 673
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "Skus"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 674
    if-eqz v2, :cond_8

    .line 675
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-nez v5, :cond_6

    .line 676
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$11(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 678
    :cond_6
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$15(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-nez v5, :cond_7

    .line 679
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v6, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 681
    :cond_7
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_9

    .line 690
    .end local v1           #j:I
    :cond_8
    :goto_3
    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "Skus"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 691
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_b

    .line 694
    const/4 v2, 0x0

    .line 670
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 682
    :cond_9
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 683
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$15(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 688
    .end local v1           #j:I
    :cond_a
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 735
    .end local v2           #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v3           #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v4           #k:I
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 692
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #j:I
    .restart local v2       #jsonSkusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v3       #jsonSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v4       #k:I
    :cond_b
    :try_start_1
    sget-object v5, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "Id"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 719
    .end local v1           #j:I
    .end local v4           #k:I
    :cond_c
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lez v5, :cond_d

    .line 720
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->showPacksView(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$18(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 722
    :cond_d
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "Gifts"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 723
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getGifts()V
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 727
    :cond_e
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "Gifts"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 728
    :cond_f
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setCartList()V
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$20(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 623
    return-void
.end method

.method public onProgress(II)V
    .locals 2
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 643
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 615
    return-void
.end method
