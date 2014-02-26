.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1$1;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1$1;->val$msg:Ljava/lang/String;

    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50$1$1;->val$msg:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$10(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;)V

    .line 1890
    return-void
.end method
