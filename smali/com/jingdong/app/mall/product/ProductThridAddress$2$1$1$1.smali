.class Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

.field private final synthetic val$countys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->val$countys:[Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 363
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v1

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getDistrictIdFromSharedPreferences()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->getDefaultPosition(Ljava/lang/String;Ljava/util/ArrayList;)I
    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$18(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    .line 365
    .local v0, position:I
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->val$countys:[Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1$1;->this$3:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->this$2:Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$2;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2$1;)Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$2;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$2;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countyOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$30(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->showSelector([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    invoke-static {v2, v3, v0, v4}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$20(Lcom/jingdong/app/mall/product/ProductThridAddress;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->countySelectorDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$31(Lcom/jingdong/app/mall/product/ProductThridAddress;Landroid/app/AlertDialog;)V

    .line 366
    return-void
.end method
