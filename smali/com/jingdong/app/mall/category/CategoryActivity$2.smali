.class Lcom/jingdong/app/mall/category/CategoryActivity$2;
.super Landroid/database/DataSetObserver;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    .line 284
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$7(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainStateView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$34(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$2;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mMainStateView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$34(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
