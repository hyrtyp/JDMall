.class Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$2;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;

.field private final synthetic val$dialogController:Lcom/jingdong/common/ui/DialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;Lcom/jingdong/common/ui/DialogController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$2;->this$1:Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener;

    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$2;->val$dialogController:Lcom/jingdong/common/ui/DialogController;

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$AddShoppingListener$2;->val$dialogController:Lcom/jingdong/common/ui/DialogController;

    invoke-virtual {v0}, Lcom/jingdong/common/ui/DialogController;->show()V

    .line 967
    return-void
.end method
