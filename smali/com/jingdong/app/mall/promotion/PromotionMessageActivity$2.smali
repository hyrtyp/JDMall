.class Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "PromotionMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;->getPromotionMsgList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter "$anonymous5"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 138
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 7
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
    const/4 v6, 0x2

    .line 168
    new-instance v0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2;->this$0:Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    const v4, 0x7f0300e6

    .line 169
    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "endDate"

    aput-object v3, v5, v1

    const/4 v1, 0x1

    const-string v3, "imageUrl"

    aput-object v3, v5, v1

    .line 170
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v3, p3

    .line 168
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2$1;-><init>(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 183
    .local v0, promotionMessageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    new-instance v1, Lcom/jingdong/common/utils/SimpleSubViewBinder;

    new-instance v2, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$PromotionMessageImageProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$PromotionMessageImageProcessor;-><init>(Lcom/jingdong/app/mall/promotion/PromotionMessageActivity$PromotionMessageImageProcessor;)V

    invoke-direct {v1, v2}, Lcom/jingdong/common/utils/SimpleSubViewBinder;-><init>(Lcom/jingdong/common/utils/adapter/SimpleImageProcessor;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->setViewBinder(Lcom/jingdong/common/utils/SubViewBinder;)V

    .line 184
    return-object v0

    .line 170
    nop

    :array_0
    .array-data 0x4
        0xcdt 0x5t 0xct 0x7ft
        0xcct 0x5t 0xct 0x7ft
    .end array-data
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 142
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
    .locals 4
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
    .line 148
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "cmsActivityList"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 152
    .local v0, jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/jingdong/common/entity/PromotionMessage;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PromotionMessage;>;"
    return-object v1
.end method
