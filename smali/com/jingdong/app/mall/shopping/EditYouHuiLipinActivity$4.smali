.class Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;
.super Ljava/lang/Object;
.source "EditYouHuiLipinActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setJingDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupon:Z
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$5(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/jingdong/common/entity/CouponInfo;->isSelectedDongForList(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/CouponInfo;

    .line 277
    .local v1, info:Lcom/jingdong/common/entity/CouponInfo;
    const v4, 0x7f0c02d8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 278
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 279
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/common/entity/CouponInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 282
    invoke-virtual {v1, v3}, Lcom/jingdong/common/entity/CouponInfo;->setModify(Z)V

    .line 285
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$3(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->setChangeJingOrDongQuan(Z)V

    .line 292
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #info:Lcom/jingdong/common/entity/CouponInfo;
    :goto_1
    return-void

    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v1       #info:Lcom/jingdong/common/entity/CouponInfo;
    :cond_0
    move v2, v3

    .line 278
    goto :goto_0

    .line 287
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #info:Lcom/jingdong/common/entity/CouponInfo;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    const-string v4, "\u60a8\u5df2\u7ecf\u9009\u62e9\u4e86\u4e1c\u5238"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 290
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupontip:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$7(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
