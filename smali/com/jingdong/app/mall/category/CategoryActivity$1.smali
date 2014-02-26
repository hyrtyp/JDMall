.class Lcom/jingdong/app/mall/category/CategoryActivity$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$1;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 254
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
    const/4 v5, 0x2

    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 265
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0c0161

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    .local v1, nameView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$1;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$1;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I
    invoke-static {v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$33(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 267
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$1;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    :goto_0
    const v3, 0x7f0c0162

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    .local v0, desView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$1;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I
    invoke-static {v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 273
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_1
    return-object v2

    .line 269
    .end local v0           #desView:Landroid/widget/TextView;
    :cond_0
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 275
    .restart local v0       #desView:Landroid/widget/TextView;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
