.class Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$1;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$1;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener$1;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$loadListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$5(Lcom/jingdong/app/mall/category/CategoryListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 376
    return-void
.end method
