.class Lcom/jingdong/app/mall/product/ProductDetailActivity$34;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForConsultationCount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

.field private final synthetic val$isSucceed:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$34;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iput-boolean p2, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$34;->val$isSucceed:Z

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$34;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    iget-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$34;->val$isSucceed:Z

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showConsultationCountRunnable(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$57(Lcom/jingdong/app/mall/product/ProductDetailActivity;Z)V

    .line 1424
    return-void
.end method
