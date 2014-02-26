.class Lcom/jingdong/app/mall/category/CategoryListActivity$3;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity;->hideHeadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$3;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$3;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->listAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$5(Lcom/jingdong/app/mall/category/CategoryListActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$3;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->listHeadContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$9(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->removeHeaderView(Landroid/view/View;)Z

    .line 188
    return-void
.end method
