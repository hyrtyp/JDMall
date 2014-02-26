.class Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$9;

.field private final synthetic val$couponURL:Ljava/lang/String;

.field private final synthetic val$roleIds:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity$10$9;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$9;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->val$roleIds:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->val$couponURL:Ljava/lang/String;

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;)Lcom/jingdong/app/mall/product/ProductListActivity$10$9;
    .locals 1
    .parameter

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$9;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1254
    new-instance v0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->val$roleIds:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->val$couponURL:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$10$9$1;->this$2:Lcom/jingdong/app/mall/product/ProductListActivity$10$9;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->this$1:Lcom/jingdong/app/mall/product/ProductListActivity$10;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity$10$9;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10$9;)Lcom/jingdong/app/mall/product/ProductListActivity$10;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity$10;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity$10;->access$0(Lcom/jingdong/app/mall/product/ProductListActivity$10;)Lcom/jingdong/app/mall/product/ProductListActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 1264
    return-void
.end method
