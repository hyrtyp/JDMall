.class Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "BarcodeProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, view:Landroid/view/View;
    rem-int/lit8 v4, p1, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 63
    const v4, 0x7f02025c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 70
    .local v0, product:Lcom/jingdong/common/entity/Product;
    new-instance v1, Lcom/jingdong/app/mall/utils/ProductShow;

    iget-object v4, p0, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity$1;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;

    invoke-direct {v1, v4, v0}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 72
    .local v1, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    const v4, 0x7f0c013c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, productTextView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ProductShow;->getNameAndAdWord()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object v3

    .line 65
    .end local v0           #product:Lcom/jingdong/common/entity/Product;
    .end local v1           #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    .end local v2           #productTextView:Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f02025e

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
