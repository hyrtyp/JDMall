.class Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ShoppingBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddShoppingListener"
.end annotation


# instance fields
.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 2
    .parameter "myActivity"

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    if-nez p1, :cond_0

    .line 939
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "myActivity is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_0
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 942
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;)Lcom/jingdong/common/frame/IMyActivity;
    .locals 1
    .parameter

    .prologue
    .line 935
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 3
    .parameter "cartResponse"

    .prologue
    .line 975
    new-instance v0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$3;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$3;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;)V

    .line 993
    .local v0, dialogController:Lcom/jingdong/common/ui/DialogController;
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->product_add_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 994
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->product_add_message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 995
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->product_add_positive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 996
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->product_add_negative:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->init(Landroid/content/Context;)V

    .line 998
    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$4;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$4;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;Lcom/jingdong/common/ui/DialogController;)V

    invoke-interface {v1, v2}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 1005
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .parameter "errorMessage"

    .prologue
    .line 947
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    new-instance v0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$1;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;)V

    .line 959
    .local v0, dialogController:Lcom/jingdong/common/ui/DialogController;
    invoke-virtual {v0, p1}, Lcom/jingdong/common/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 960
    sget-object v1, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->init(Landroid/content/Context;)V

    .line 962
    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v2, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$2;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$2;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;Lcom/jingdong/common/ui/DialogController;)V

    invoke-interface {v1, v2}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 971
    .end local v0           #dialogController:Lcom/jingdong/common/ui/DialogController;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1009
    return-void
.end method
