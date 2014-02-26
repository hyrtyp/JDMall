.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$39;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->forwardLoginPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$39;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 6981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6985
    sput-boolean v3, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isGoFillOrder:Z

    .line 6986
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/jingdong/common/login/LoginUserBase;->setUserStateOff(Z)V

    .line 6987
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$39;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-class v2, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6988
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6989
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$39;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 6991
    return-void
.end method
