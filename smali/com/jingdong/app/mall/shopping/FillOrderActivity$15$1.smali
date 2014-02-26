.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$15$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;->run()V
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
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$15$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;

    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 1551
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$15$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$15;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->gotoEdidtOrListAddress()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$21(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 1552
    return-void
.end method
