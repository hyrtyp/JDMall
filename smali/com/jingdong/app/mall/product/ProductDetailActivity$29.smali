.class Lcom/jingdong/app/mall/product/ProductDetailActivity$29;
.super Ljava/lang/Object;
.source "ProductDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailActivity;->showProductForOptoins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$29;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailActivity$29;->this$0:Lcom/jingdong/app/mall/product/ProductDetailActivity;

    #calls: Lcom/jingdong/app/mall/product/ProductDetailActivity;->showOptionsRunnable()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailActivity;->access$55(Lcom/jingdong/app/mall/product/ProductDetailActivity;)V

    .line 1372
    return-void
.end method
