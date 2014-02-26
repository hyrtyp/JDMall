.class Lcom/jingdong/app/mall/personel/PersonelActivity$15;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->setRecomandList(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$15;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1456
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v9

    check-cast v9, Landroid/widget/Adapter;

    move/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/Product;

    .line 1457
    .local v4, product:Lcom/jingdong/common/entity/Product;
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$15;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$51(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v9

    const v10, 0x7f0c04f0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1459
    .local v6, productTextView:Landroid/widget/TextView;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1460
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1461
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getAdWord()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1462
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x0

    .line 1463
    .local v7, start:I
    :goto_0
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1465
    .local v3, end:I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$15;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090028

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v2, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1466
    .local v2, colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    const/16 v9, 0x21

    invoke-virtual {v1, v2, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1467
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$15;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$51(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v9

    const v10, 0x7f0c04f1

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1470
    .local v5, productJdPriceView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v8, ""

    .line 1471
    .local v8, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1473
    return-void

    .line 1462
    .end local v2           #colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    .end local v3           #end:I
    .end local v5           #productJdPriceView:Landroid/widget/TextView;
    .end local v7           #start:I
    .end local v8           #tmp:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_0

    .line 1470
    .restart local v2       #colorSpanRed:Landroid/text/style/ForegroundColorSpan;
    .restart local v3       #end:I
    .restart local v5       #productJdPriceView:Landroid/widget/TextView;
    .restart local v7       #start:I
    :cond_1
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$15;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const v10, 0x7f07027e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1478
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
