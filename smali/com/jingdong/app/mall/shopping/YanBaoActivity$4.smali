.class Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "YanBaoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/YanBaoActivity;->setSelectedAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 433
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

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

    .line 437
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 439
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 440
    .local v3, item:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$7(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    .local v1, categoryName:Ljava/lang/String;
    const v7, 0x7f0c0acc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 443
    .local v4, nameView:Landroid/widget/TextView;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 444
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getServiceYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    const v9, 0x7f0704b1

    invoke-virtual {v8, v9}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 446
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 447
    .local v5, start:I
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 449
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getSubString(Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$10(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 450
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 451
    .local v2, end:I
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090020

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v7, v5, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 453
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    return-object v6
.end method
