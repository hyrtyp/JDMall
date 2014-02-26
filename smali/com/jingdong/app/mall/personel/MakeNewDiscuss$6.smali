.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MakeNewDiscuss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->initGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 377
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    .locals 1
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 386
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 387
    .local v3, view:Landroid/view/View;
    move v2, p1

    .line 388
    .local v2, thePosition:I
    const v4, 0x7f0c01d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 389
    .local v1, picView:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/DiscussImage;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/DiscussImage;->getPicture()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    const v4, 0x7f0c01d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 391
    .local v0, deleteImageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

    invoke-direct {v4, p0, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    return-object v3
.end method
