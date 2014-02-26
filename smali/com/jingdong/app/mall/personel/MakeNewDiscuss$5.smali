.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

.field private final synthetic val$discussImage_:Lcom/jingdong/common/entity/DiscussImage;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;Lcom/jingdong/common/entity/DiscussImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->val$discussImage_:Lcom/jingdong/common/entity/DiscussImage;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$5(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->val$discussImage_:Lcom/jingdong/common/entity/DiscussImage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$6(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$7(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$7(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$5;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$7(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Gallery;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 360
    :cond_0
    return-void
.end method
