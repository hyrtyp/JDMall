.class Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate$1;
.super Ljava/lang/Object;
.source "ProductImagesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->access$1(Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->requestLayout()V

    .line 188
    return-void
.end method
