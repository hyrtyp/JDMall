.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1$1;->val$msg:Ljava/lang/String;

    .line 2571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16$1$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2575
    return-void
.end method
