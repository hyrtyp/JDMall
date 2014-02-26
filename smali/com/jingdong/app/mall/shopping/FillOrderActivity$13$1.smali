.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$13$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->run()V
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
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 1433
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    if-eqz v1, :cond_0

    .line 1434
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1435
    .local v0, t:Landroid/content/Intent;
    const-string v1, "isNoRegisterOrder"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->isNoRegisterOrder:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1436
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1441
    .end local v0           #t:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1438
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$13;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u60a8\u5148\u8f93\u5165\u6536\u8d27\u4eba\u4fe1\u606f!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
