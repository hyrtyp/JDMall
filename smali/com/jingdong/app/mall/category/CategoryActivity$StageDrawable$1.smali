.class Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->autoCorrectAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->access$2(Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->frameRate:I
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;I)V

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable$1;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->invalidateSelf()V

    .line 1298
    return-void
.end method
