.class Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "MyCouponAndGiftCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GiftNextPageLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

.field private token:J


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AbsListView;J)V
    .locals 7
    .parameter
    .parameter "myActivity"
    .parameter "listView"
    .parameter "token"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    .line 306
    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->loadingView:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const-string v4, "giftCardList"

    const/4 v5, 0x0

    const-string v6, ""

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 307
    iput-wide p4, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->token:J

    .line 308
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    .locals 1
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    return-object v0
.end method


# virtual methods
.method protected createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 7
    .parameter "myActivity"
    .parameter "view"
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
    const/4 v3, 0x4

    .line 350
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;

    .line 352
    const v4, 0x7f03009e

    .line 353
    new-array v5, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "faceValue"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "balance"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "id"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "scope"

    aput-object v2, v5, v1

    .line 354
    new-array v6, v3, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .line 350
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 383
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    return-object v0

    .line 354
    :array_0
    .array-data 0x4
        0x6ct 0x3t 0xct 0x7ft
        0x6et 0x3t 0xct 0x7ft
        0x71t 0x3t 0xct 0x7ft
        0x73t 0x3t 0xct 0x7ft
    .end array-data
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 329
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->lastToken:J
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$3(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->token:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$1;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->post(Ljava/lang/Runnable;)V

    .line 345
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$2;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 389
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 324
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
    .line 312
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 313
    .local v0, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JdGiftCard;>;"
    if-eqz v0, :cond_0

    .line 315
    const-string v2, "giftCards"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/JdGiftCard;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 318
    :cond_0
    return-object v1
.end method
