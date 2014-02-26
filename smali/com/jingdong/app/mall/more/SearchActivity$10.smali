.class Lcom/jingdong/app/mall/more/SearchActivity$10;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->showHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$10;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 463
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 484
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 485
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0294

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 486
    .local v0, textView:Landroid/widget/TextView;
    const/high16 v2, 0x4180

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    invoke-super {p0}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 488
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :goto_0
    return-object v1

    .line 494
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v2, p0, Lcom/jingdong/app/mall/more/SearchActivity$10;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/more/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 497
    const/16 v2, 0x14

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
