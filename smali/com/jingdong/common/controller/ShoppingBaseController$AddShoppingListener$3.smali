.class Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$3;
.super Lcom/jingdong/common/ui/DialogController;
.source "ShoppingBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$3;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;

    .line 975
    invoke-direct {p0}, Lcom/jingdong/common/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 979
    packed-switch p2, :pswitch_data_0

    .line 991
    :goto_0
    return-void

    .line 981
    :pswitch_0
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->access$1()Lcom/jingdong/common/utils/ICommon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->access$1()Lcom/jingdong/common/utils/ICommon;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$3;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;

    #getter for: Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;
    invoke-static {v1}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->access$0(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;)Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/utils/ICommon;->goToShoppingCartPage(Landroid/content/Context;Z)V

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$3;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 988
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
