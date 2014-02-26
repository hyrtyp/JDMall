.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteProductDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$13(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$14(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingController;->deleteProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 257
    return-void
.end method
