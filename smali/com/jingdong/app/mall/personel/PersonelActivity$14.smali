.class Lcom/jingdong/app/mall/personel/PersonelActivity$14;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1439
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->guessLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$7(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1440
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mGallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$50(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/Gallery;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1443
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    const v2, 0x3fffffff

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v3

    div-int v1, v2, v3

    .line 1445
    .local v1, temp:I
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->getActualCount()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v0, v2, 0x1

    .line 1446
    .local v0, initSelect:I
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$14;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mGallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$50(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/Gallery;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 1448
    .end local v0           #initSelect:I
    .end local v1           #temp:I
    :cond_0
    return-void
.end method
