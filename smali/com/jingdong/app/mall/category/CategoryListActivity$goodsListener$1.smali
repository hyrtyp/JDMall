.class Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$1;
.super Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
.source "CategoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$1;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 293
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x21

    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 301
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$1;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/Product;

    .line 302
    .local v4, product:Lcom/jingdong/common/entity/Product;
    const v8, 0x7f0c016c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 303
    .local v2, jdPriceView:Landroid/widget/TextView;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$1;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 304
    .local v0, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    iget-object v8, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$1;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v8}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/app/mall/category/CategoryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0701e1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 305
    .local v3, label:Ljava/lang/CharSequence;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 307
    .local v5, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 308
    .local v6, start:I
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 310
    .local v1, end:I
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    const v9, 0x3f99999a

    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 311
    invoke-virtual {v5, v0, v6, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 312
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-object v7
.end method
