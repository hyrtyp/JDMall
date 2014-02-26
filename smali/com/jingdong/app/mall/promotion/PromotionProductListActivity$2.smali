.class Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "PromotionProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->handleGridView(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;)Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 8
    .parameter "myActivity"
    .parameter "adapterView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Landroid/widget/AdapterView;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/jingdong/common/utils/MySimpleAdapter;"
        }
    .end annotation

    .prologue
    .local p3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v6, 0x3

    .line 277
    iget-object v7, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    new-instance v0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$4;

    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    const v4, 0x7f0300e8

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "imageurl"

    aput-object v3, v5, v1

    const/4 v1, 0x1

    const-string v3, "name"

    aput-object v3, v5, v1

    const/4 v1, 0x2

    const-string v3, "jdPrice"

    aput-object v3, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$4;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    #setter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v7, v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$6(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;Lcom/jingdong/common/utils/MySimpleAdapter;)V

    .line 290
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$7(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$PromotionProductListImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$PromotionProductListImageProcessor;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$PromotionProductListImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 291
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionProductListAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$7(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    return-object v0

    .line 277
    nop

    :array_0
    .array-data 0x4
        0x47t 0x2t 0xct 0x7ft
        0x48t 0x2t 0xct 0x7ft
        0x49t 0x2t 0xct 0x7ft
    .end array-data
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const/16 v6, 0x8

    const/high16 v5, 0x40c0

    .line 178
    invoke-super {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 179
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 180
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v2, :cond_0

    .line 181
    const-string v4, "couponStatus"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, couponStatus:Ljava/lang/String;
    const-string v4, "roleIds"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, roleIds:Ljava/lang/String;
    const-string v4, "couponURL"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, couponURL:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 185
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$2(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-nez v4, :cond_1

    .line 216
    .end local v0           #couponStatus:Ljava/lang/String;
    .end local v1           #couponURL:Ljava/lang/String;
    .end local v3           #roleIds:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v0       #couponStatus:Ljava/lang/String;
    .restart local v1       #couponURL:Ljava/lang/String;
    .restart local v3       #roleIds:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    #calls: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->setVisibleAndPadding(II)V
    invoke-static {v4, v5, v6}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$3(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;II)V

    .line 191
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$2(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$1;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    invoke-static {v5}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    #calls: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->setVisibleAndPadding(II)V
    invoke-static {v4, v6, v5}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$3(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;II)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    invoke-static {v5}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    #calls: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->setVisibleAndPadding(II)V
    invoke-static {v4, v6, v5}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$3(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;II)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 174
    return-void
.end method

.method protected showError()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    new-instance v1, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$3;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 5
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/HttpGroup$HttpResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    .line 220
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 224
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v0, :cond_4

    const-string v2, "cmsActivityWareList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 226
    const-string v2, "cmsActivityWareList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 237
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->getAllProductList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    new-instance v3, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2$2;-><init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 249
    :cond_3
    return-object v1

    .line 227
    :cond_4
    if-eqz v0, :cond_0

    const-string v2, "wareInfoList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    const-string v2, "wareInfoList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method
