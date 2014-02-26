.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyPaymentInfoArea()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1922
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 1923
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1925
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const v1, 0x7f0c01e2

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1926
    .local v9, lin:Landroid/widget/RelativeLayout;
    const v0, 0x7f0300b1

    invoke-static {v0, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 1927
    .local v8, layout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$24(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Landroid/widget/ListView;)V

    .line 1928
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    .line 1929
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1930
    .local v7, item1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "info"

    const-string v1, " "

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1932
    iget-object v10, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->value:Ljava/util/List;

    const v3, 0x7f0300b4

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "info"

    aput-object v5, v4, v12

    new-array v5, v11, [I

    const v11, 0x7f0c0448

    aput v11, v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, v10, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    .line 1933
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->myAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1934
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1937
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1938
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1940
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->paymentInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$18$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$18;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1961
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #item1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #layout:Landroid/widget/RelativeLayout;
    .end local v9           #lin:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method
