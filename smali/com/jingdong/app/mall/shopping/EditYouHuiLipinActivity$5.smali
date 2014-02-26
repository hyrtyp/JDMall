.class Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;
.super Landroid/widget/BaseAdapter;
.source "EditYouHuiLipinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setDongDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    .line 301
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 337
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 305
    if-nez p2, :cond_0

    .line 306
    const v2, 0x7f030083

    invoke-static {v2, p3, v4}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 310
    .local v0, holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;

    .line 321
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/CouponInfo;

    .line 322
    .local v1, info:Lcom/jingdong/common/entity/CouponInfo;
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getDiscountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mTextViewTimeEnd:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getTimeEndShow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mTextViewScope:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mCheck:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 327
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I
    invoke-static {v2, p1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$8(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;I)V

    .line 332
    :goto_1
    return-object p2

    .line 313
    .end local v1           #info:Lcom/jingdong/common/entity/CouponInfo;
    :cond_1
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;
    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;)V

    .line 314
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;
    const v2, 0x7f0c02de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mCheck:Landroid/widget/RadioButton;

    .line 315
    const v2, 0x7f0c02d7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mTextViewName:Landroid/widget/TextView;

    .line 316
    const v2, 0x7f0c02dc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mTextViewTimeEnd:Landroid/widget/TextView;

    .line 317
    const v2, 0x7f0c02e0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mTextViewScope:Landroid/widget/TextView;

    .line 318
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    .restart local v1       #info:Lcom/jingdong/common/entity/CouponInfo;
    :cond_2
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5$ViewHolder;->mCheck:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
