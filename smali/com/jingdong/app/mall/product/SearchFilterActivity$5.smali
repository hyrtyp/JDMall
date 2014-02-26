.class Lcom/jingdong/app/mall/product/SearchFilterActivity$5;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->handleHeadClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

.field private final synthetic val$searchChoosed:Landroid/widget/TextView;

.field private final synthetic val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchChoosed:Landroid/widget/TextView;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    if-nez p2, :cond_2

    .line 260
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, p2, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0, p2}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 268
    if-eqz p2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$30(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$33(Lcom/jingdong/app/mall/product/SearchFilterActivity;Z)V

    .line 271
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->showIsHave()V

    .line 276
    :cond_0
    :goto_1
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$30(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$33(Lcom/jingdong/app/mall/product/SearchFilterActivity;Z)V

    .line 278
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->hideIsHave()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$15(Lcom/jingdong/app/mall/product/SearchFilterActivity;I)V

    .line 282
    return-void

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->val$searchChoosed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->resetIsHave()V

    goto :goto_1
.end method
