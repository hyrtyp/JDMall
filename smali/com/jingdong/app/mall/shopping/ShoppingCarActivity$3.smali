.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$3;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->forwardOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 292
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 293
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 294
    sput-boolean v1, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 295
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->startTaskActivityInFrame(Landroid/content/Intent;)V

    .line 299
    return-void
.end method
