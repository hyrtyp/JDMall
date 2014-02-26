.class Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;
.super Landroid/widget/BaseAdapter;
.source "EditYouHuiLipinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setJingDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    .line 204
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
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
    .line 244
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
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
    .line 239
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

    .line 208
    if-nez p2, :cond_0

    .line 209
    const v2, 0x7f030082

    invoke-static {v2, p3, v4}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 213
    .local v0, holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;

    .line 224
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/CouponInfo;

    .line 225
    .local v1, info:Lcom/jingdong/common/entity/CouponInfo;
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getDiscountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mTextViewTimeEnd:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getTimeEndShow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mTextViewScope:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jingdong/common/entity/CouponInfo;->getSelected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 234
    :goto_1
    return-object p2

    .line 216
    .end local v1           #info:Lcom/jingdong/common/entity/CouponInfo;
    :cond_1
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;
    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;)V

    .line 217
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;
    const v2, 0x7f0c02d8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 218
    const v2, 0x7f0c02d7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mTextViewName:Landroid/widget/TextView;

    .line 219
    const v2, 0x7f0c02dc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mTextViewTimeEnd:Landroid/widget/TextView;

    .line 220
    const v2, 0x7f0c02da

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mTextViewScope:Landroid/widget/TextView;

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    .restart local v1       #info:Lcom/jingdong/common/entity/CouponInfo;
    :cond_2
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
