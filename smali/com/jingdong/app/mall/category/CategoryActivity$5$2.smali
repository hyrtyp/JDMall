.class Lcom/jingdong/app/mall/category/CategoryActivity$5$2;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity$5;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryActivity$5;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5$2;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$5;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$5$2;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$5;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$5;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$5;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity$5;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->invalidateSelf()V

    .line 382
    return-void
.end method
