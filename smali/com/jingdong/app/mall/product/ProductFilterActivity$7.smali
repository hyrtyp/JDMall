.class Lcom/jingdong/app/mall/product/ProductFilterActivity$7;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity;->handleHeadClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

.field private final synthetic val$searchChoosed:Landroid/widget/TextView;

.field private final synthetic val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/SearchFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchChoosed:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    if-nez p2, :cond_0

    .line 521
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0, p2}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 527
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 528
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$7;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
