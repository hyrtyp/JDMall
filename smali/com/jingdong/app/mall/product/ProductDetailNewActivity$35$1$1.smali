.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;

.field private final synthetic val$image:Lcom/jingdong/common/entity/Image;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;Lcom/jingdong/common/entity/Image;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->val$image:Lcom/jingdong/common/entity/Image;

    iput p3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->val$position:I

    .line 1970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1974
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->val$image:Lcom/jingdong/common/entity/Image;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/Image;->getBig()Ljava/lang/String;

    move-result-object v0

    .line 1976
    .local v0, bigUrl:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1977
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "position"

    iget v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->val$position:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1978
    const-string v3, "url"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v3, "product"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$10(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/Product;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1981
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v3

    const-class v4, Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1982
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1984
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$35;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1985
    return-void
.end method
