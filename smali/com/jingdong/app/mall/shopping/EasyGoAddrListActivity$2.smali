.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setEasyBuy_list()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 173
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 174
    .local v8, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    const v2, 0x7f0c01f1

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 175
    .local v11, lin:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    const v2, 0x7f0c01f2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 177
    .local v12, lin2:Landroid/widget/LinearLayout;
    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c01f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 178
    .local v9, layout:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 179
    .local v7, easyList:Landroid/widget/ListView;
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 180
    .local v3, item:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    new-instance v0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    const v4, 0x7f030052

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "name"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v13, 0x7f0c01de

    aput v13, v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 326
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 329
    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c01f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 330
    .local v10, layout2:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->mAdd:Landroid/widget/Button;

    .line 331
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->mAdd:Landroid/widget/Button;

    new-instance v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$2;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 371
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 372
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->mAdd:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x400

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x1e0

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/16 v2, 0x140

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/16 v2, 0x258

    if-gt v1, v2, :cond_2

    .line 379
    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 380
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/high16 v4, 0x4286

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    :cond_0
    :goto_0
    new-instance v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$3;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 433
    new-instance v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 545
    return-void

    .line 382
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/high16 v4, 0x4288

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_3

    .line 385
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/high16 v4, 0x428c

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/16 v4, 0x140

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 387
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/high16 v4, 0x4280

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 386
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 388
    :cond_6
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x1e0

    if-ge v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_3
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/16 v4, 0x140

    if-ge v2, v4, :cond_8

    const/4 v2, 0x1

    :goto_4
    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 389
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/high16 v4, 0x4286

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 388
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 390
    :cond_9
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/16 v2, 0x168

    if-ne v1, v2, :cond_a

    .line 391
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/high16 v4, 0x4282

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 392
    :cond_a
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenHeight:I

    const/16 v2, 0x1e0

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v1, v1, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/16 v2, 0x280

    if-lt v1, v2, :cond_0

    .line 393
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->screenWidth:I

    const/high16 v4, 0x4286

    invoke-static {v4}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v4

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
