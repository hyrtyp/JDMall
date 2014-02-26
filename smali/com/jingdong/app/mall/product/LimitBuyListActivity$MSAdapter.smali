.class Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "LimitBuyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/LimitBuyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MSAdapter"
.end annotation


# instance fields
.field private count:I

.field private miaoShaProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;",
            ">;"
        }
    .end annotation
.end field

.field private request:I

.field final synthetic this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

.field private timeMillis:J


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 222
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->miaoShaProducts:Ljava/util/List;

    .line 223
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IIFF)V
    .locals 9
    .parameter
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .parameter "thumbType"
    .parameter "thumbWidth"
    .parameter "thumbHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[IIFF)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p3, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 230
    invoke-direct/range {v0 .. v8}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IIFF)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->miaoShaProducts:Ljava/util/List;

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
    .locals 7
    .parameter
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[IZ)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p3, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 226
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->miaoShaProducts:Ljava/util/List;

    .line 227
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;)Lcom/jingdong/app/mall/product/LimitBuyListActivity;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    iget v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->count:I

    .line 245
    :goto_0
    iget v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->count:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    if-eqz p2, :cond_1

    .line 279
    .end local p2
    :goto_1
    return-object p2

    .line 243
    .restart local p2
    :cond_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->count:I

    goto :goto_0

    .line 248
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 249
    .local v3, item:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/Product;

    .line 250
    .local v5, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v5}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 251
    .local v0, _id:Ljava/lang/Long;
    const-wide/16 v1, 0x0

    .line 252
    .local v1, id:J
    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 255
    :cond_2
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v1, v6

    if-gtz v6, :cond_3

    .line 256
    long-to-int v6, v1

    iput v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->request:I

    .line 260
    :goto_2
    new-instance v4, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    iget-object v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    invoke-direct {v4, v6, v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/View;)V

    .line 261
    .local v4, miaoShaProduct:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;
    iget-wide v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->timeMillis:J

    invoke-virtual {v4, v6, v7}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setTimeMillis(J)V

    .line 262
    iget v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->request:I

    invoke-virtual {v4, v6}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setRequest(I)V

    .line 263
    iget-object v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v6}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$1(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    .line 264
    new-instance v6, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;

    invoke-direct {v6, p0, v5}, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter$1;-><init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v4, v5, v6}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bindData(Lcom/jingdong/common/entity/Product;Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->miaoShaProducts:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p2, v3

    .line 279
    goto :goto_1

    .line 258
    .end local v4           #miaoShaProduct:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;
    :cond_3
    const v6, 0x7fffffff

    iget v7, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->request:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->request:I

    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->miaoShaProducts:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->miaoShaProducts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 289
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->miaoShaProducts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    .line 287
    .local v1, jdMiaoShaProduct:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->onStop()V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMillis(J)V
    .locals 0
    .parameter "timeMillis"

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$MSAdapter;->timeMillis:J

    .line 293
    return-void
.end method
