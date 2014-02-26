.class Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;
.super Lcom/jingdong/common/utils/NextPageLoader;
.source "MyCouponAndGiftCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CouponNextPageLoader"
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
    .line 179
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    .line 180
    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->loadingView:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const-string v4, "couponList"

    const/4 v5, 0x0

    const v0, 0x7f0704e6

    invoke-virtual {p1, v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/NextPageLoader;-><init>(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 181
    iput-wide p4, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->token:J

    .line 182
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

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
    const/4 v3, 0x5

    .line 242
    new-instance v0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;

    .line 244
    const v4, 0x7f03009c

    .line 245
    new-array v5, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "typeName"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "money"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "id"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "consumption"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "scope"

    aput-object v2, v5, v1

    .line 246
    new-array v6, v3, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    .line 242
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 286
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    return-object v0

    .line 246
    nop

    :array_0
    .array-data 0x4
        0x5bt 0x3t 0xct 0x7ft
        0x5dt 0x3t 0xct 0x7ft
        0x60t 0x3t 0xct 0x7ft
        0x62t 0x3t 0xct 0x7ft
        0x66t 0x3t 0xct 0x7ft
    .end array-data
.end method

.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    .line 219
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 224
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;-><init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->post(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "postion"

    .prologue
    .line 292
    return-void
.end method

.method protected showError()V
    .locals 0

    .prologue
    .line 198
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
    .line 186
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 187
    .local v0, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/JDCoupon;>;"
    if-eqz v0, :cond_0

    .line 189
    const-string v2, "couponList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/common/entity/JDCoupon;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 192
    :cond_0
    return-object v1
.end method
