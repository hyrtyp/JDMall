.class public Lcom/jingdong/app/mall/home/slide/SlideUtils;
.super Ljava/lang/Object;
.source "SlideUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDivider(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 2
    .parameter "vg"
    .parameter "lp"
    .parameter "drawable"

    .prologue
    .line 13
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, divider:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void
.end method

.method public static getLayoutParamsValue(IIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marginRight"
    .parameter "marginBottom"

    .prologue
    .line 19
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f80

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    .local v0, dl:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 21
    return-object v0
.end method
