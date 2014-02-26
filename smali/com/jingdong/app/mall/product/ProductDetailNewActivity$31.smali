.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$31;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForConsultationCount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

.field private final synthetic val$isSucceed:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$31;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iput-boolean p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$31;->val$isSucceed:Z

    .line 1821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$31;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    iget-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$31;->val$isSucceed:Z

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showConsultationCount(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$75(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;Z)V

    .line 1825
    return-void
.end method
