.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$2;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;

    .line 1798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1804
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1805
    .local v0, t:Landroid/content/Intent;
    const-string v1, "isNoRegisterOrder"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1806
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16$2;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$16;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1807
    return-void
.end method
