.class Lcom/jingdong/app/mall/product/ProductFilterActivity$2$3;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$3;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$3;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$13(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$3;->this$1:Lcom/jingdong/app/mall/product/ProductFilterActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$16(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    return-void
.end method
