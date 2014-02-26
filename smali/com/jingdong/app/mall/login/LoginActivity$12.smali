.class Lcom/jingdong/app/mall/login/LoginActivity$12;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->showAllSavedUserName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 783
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 786
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 787
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/login/LoginActivity$12;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 788
    .local v3, name:Ljava/lang/String;
    const v8, 0x7f0c0308

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 789
    .local v4, nameTV:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    const v8, 0x7f0c0306

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 792
    .local v2, iconView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/UserPhotoUpload;->getUserBitmapPhotoFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 796
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 797
    iget-object v8, p0, Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-virtual {v8}, Lcom/jingdong/app/mall/login/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0072

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 798
    .local v6, size:I
    const/high16 v8, 0x40c0

    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v5

    .line 799
    .local v5, padding:I
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 800
    invoke-static {v0, v6, v6}, Lcom/jingdong/common/utils/ImageUtil;->toRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 806
    .end local v5           #padding:I
    .end local v6           #size:I
    :goto_0
    const v8, 0x7f0c0307

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 807
    .local v1, chazi:Landroid/widget/ImageView;
    new-instance v8, Lcom/jingdong/app/mall/login/LoginActivity$12$1;

    invoke-direct {v8, p0, v3, p1}, Lcom/jingdong/app/mall/login/LoginActivity$12$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$12;Ljava/lang/String;I)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    return-object v7

    .line 802
    .end local v1           #chazi:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 803
    const v8, 0x7f0201d6

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
