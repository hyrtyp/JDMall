.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$30;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showProductForCommentCount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$30;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$30;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->showCommentCountRunnable()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$74(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)V

    .line 1816
    return-void
.end method
