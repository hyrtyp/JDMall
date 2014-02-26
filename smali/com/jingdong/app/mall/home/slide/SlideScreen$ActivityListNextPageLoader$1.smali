.class Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "SlideScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 526
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 535
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 536
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0c05c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 537
    .local v0, endTimeTextView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/PromotionMessage;

    .line 538
    .local v1, promotionMessage:Lcom/jingdong/common/entity/PromotionMessage;
    if-eqz v1, :cond_0

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v4}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/jingdong/common/entity/PromotionMessage;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_0
    return-object v2
.end method
