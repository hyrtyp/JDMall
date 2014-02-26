.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$10;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 915
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 917
    return-void
.end method
