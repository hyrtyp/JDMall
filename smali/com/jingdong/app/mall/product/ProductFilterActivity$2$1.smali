.class Lcom/jingdong/app/mall/product/ProductFilterActivity$2$1;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$13(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->emptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$14(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    return-void
.end method
