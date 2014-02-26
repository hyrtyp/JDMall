.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$7;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 872
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 873
    .local v0, t:Landroid/content/Intent;
    const-string v1, "ExtraNewCurrentOrder"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 874
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 875
    return-void
.end method
