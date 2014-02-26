.class Lcom/jingdong/app/mall/personel/PersonelActivity$13;
.super Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;
.source "PersonelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->setRecomandList(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$13;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1419
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1425
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1426
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$13;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 1432
    .local v0, product:Lcom/jingdong/common/entity/Product;
    return-object v1
.end method
