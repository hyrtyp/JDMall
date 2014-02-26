.class Lcom/jingdong/common/controller/ShoppingBaseController$4$1;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ShoppingBaseController$4;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$4;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4$1;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$4;

    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1137
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->access$1()Lcom/jingdong/common/utils/ICommon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    invoke-static {}, Lcom/jingdong/common/controller/ShoppingBaseController;->access$1()Lcom/jingdong/common/utils/ICommon;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jingdong/common/utils/ICommon;->goToShoppingCartPage(Landroid/content/Context;Z)V

    .line 1140
    :cond_0
    return-void
.end method
