.class Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$5;

.field private final synthetic val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

.field private final synthetic val$tips:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$5;Landroid/widget/TextView;Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$5;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->val$tips:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->val$tips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$5;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->showItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$5;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->val$gallery:Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$5$1;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$5;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->showItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$5;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$5;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/home/slide/JDShoppingGallery;->setSelection(I)V

    .line 270
    :cond_0
    return-void
.end method
