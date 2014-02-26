.class Lcom/jingdong/app/mall/personel/PersonelActivity$6;
.super Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
.source "PersonelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->setOrderList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
    .locals 7
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter "$anonymous5"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$6;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1055
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1057
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1059
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$6;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    .line 1060
    .local v2, product:Lcom/jingdong/common/entity/Product;
    const v4, 0x7f0c010a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1061
    .local v0, orderId:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8ba2\u5355\u53f7:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    const v4, 0x7f0c010b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1064
    .local v1, orderTime:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getOrderSubtime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    return-object v3
.end method
