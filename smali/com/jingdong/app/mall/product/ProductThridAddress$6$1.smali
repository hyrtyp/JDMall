.class Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductThridAddress$6;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$6;

.field private final synthetic val$provinces:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductThridAddress$6;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->val$provinces:[Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 133
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$6;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$6;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v1

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getProvinceIDFromSharedPreferences()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$6;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$6;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$5(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->getDefaultPosition(Ljava/lang/String;Ljava/util/ArrayList;)I
    invoke-static {v1, v2, v3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$18(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    .line 135
    .local v0, position:I
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$6;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$6;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$6;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$6;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->val$provinces:[Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductThridAddress$6$1;->this$1:Lcom/jingdong/app/mall/product/ProductThridAddress$6;

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress$6;->this$0:Lcom/jingdong/app/mall/product/ProductThridAddress;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductThridAddress$6;->access$0(Lcom/jingdong/app/mall/product/ProductThridAddress$6;)Lcom/jingdong/app/mall/product/ProductThridAddress;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$48(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/product/ProductThridAddress;->showSelector([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    invoke-static {v2, v3, v0, v4}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$20(Lcom/jingdong/app/mall/product/ProductThridAddress;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceSelectorDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->access$49(Lcom/jingdong/app/mall/product/ProductThridAddress;Landroid/app/AlertDialog;)V

    .line 136
    return-void
.end method
