.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setTextWatcher(Landroid/widget/EditText;Lcom/jingdong/common/entity/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

.field private final synthetic val$pt:Lcom/jingdong/common/entity/Product;

.field private final synthetic val$wEditTxt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/widget/EditText;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->val$wEditTxt:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->val$pt:Lcom/jingdong/common/entity/Product;

    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->val$wEditTxt:Landroid/widget/EditText;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->val$wEditTxt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->val$pt:Lcom/jingdong/common/entity/Product;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;Landroid/widget/EditText;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2099
    return-void
.end method
