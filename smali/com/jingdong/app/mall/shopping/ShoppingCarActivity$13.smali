.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setCartList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

.field private final synthetic val$listTemp:Ljava/util/ArrayList;

.field private final synthetic val$totlacount:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->val$totlacount:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->val$listTemp:Ljava/util/ArrayList;

    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v3, 0x99

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x4300

    const/16 v10, 0x1e0

    .line 1714
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->val$totlacount:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-boolean v6, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    .line 1716
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07034c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1718
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1719
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v1, 0x7f070317

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-static {v0, v1}, Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 1723
    iget-object v9, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->val$listTemp:Ljava/util/ArrayList;

    const v4, 0x7f03010c

    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "Price"

    aput-object v1, v5, v12

    new-array v6, v6, [I

    const v1, 0x7f0c068e

    aput v1, v6, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, v9, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 1965
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1968
    const-wide/high16 v0, 0x407e

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    .line 1974
    .local v7, te:J
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    const/16 v1, 0x400

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    if-le v0, v10, :cond_3

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/16 v1, 0x140

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/16 v1, 0x258

    if-gt v0, v1, :cond_3

    .line 1977
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 1978
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    invoke-static {v11}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1996
    :cond_1
    :goto_0
    return-void

    .line 1980
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/high16 v3, 0x4301

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1984
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_4

    .line 1985
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/high16 v3, 0x4302

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1986
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_5

    .line 1987
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    invoke-static {v11}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1988
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    if-ge v0, v10, :cond_6

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/16 v1, 0x140

    if-gt v0, v1, :cond_6

    .line 1989
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/high16 v3, 0x4303

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1990
    :cond_6
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    const/16 v1, 0x400

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    if-le v0, v10, :cond_7

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/16 v1, 0x280

    if-lt v0, v1, :cond_7

    .line 1991
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    invoke-static {v11}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1992
    :cond_7
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/16 v1, 0x168

    if-ne v0, v1, :cond_1

    .line 1993
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    const/high16 v3, 0x4301

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
