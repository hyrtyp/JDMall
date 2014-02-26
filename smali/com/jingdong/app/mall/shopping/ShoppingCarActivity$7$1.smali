.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;

.field private final synthetic val$id:J

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;

    iput-wide p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;->val$id:J

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;->val$name:Ljava/lang/String;

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;->val$id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7$1;->val$name:Ljava/lang/String;

    .line 887
    new-instance v3, Lcom/jingdong/common/entity/SourceEntity;

    const-string v4, "shoppingCart_pack"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 888
    return-void
.end method
