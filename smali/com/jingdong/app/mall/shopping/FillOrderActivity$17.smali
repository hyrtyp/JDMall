.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setReceiverInfoArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 1836
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1838
    .local v8, inflater:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v1, 0x7f0c01e1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1839
    .local v11, lin:Landroid/widget/RelativeLayout;
    const v0, 0x7f0300bb

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0466

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1840
    .local v10, layout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v0, 0x7f0c0467

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V

    .line 1841
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v0, 0x7f0c03bb

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->priceDifferentRemindTextView:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$23(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/TextView;)V

    .line 1843
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    .line 1844
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1845
    .local v9, item1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Name"

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    const-string v0, "Mobile"

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserMobile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    :try_start_0
    const-string v0, "addr"

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/UserInfo;->getUserAddr()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Where"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1860
    iget-object v12, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v3, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    const v4, 0x7f0300bf

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "Name"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "Mobile"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "addr"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, v12, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 1873
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1874
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1880
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1881
    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1882
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v0, :cond_2

    .line 1883
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1884
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1889
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isEasyBuy:Z

    if-nez v0, :cond_1

    .line 1890
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1901
    :cond_1
    return-void

    .line 1854
    :catch_0
    move-exception v7

    .line 1856
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1885
    .end local v7           #e:Lorg/json/JSONException;
    :cond_2
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1887
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$17;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->receiverInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    goto :goto_1

    .line 1860
    :array_0
    .array-data 0x4
        0x2dt 0x3t 0xct 0x7ft
        0x2ft 0x3t 0xct 0x7ft
        0x6bt 0x4t 0xct 0x7ft
    .end array-data
.end method
