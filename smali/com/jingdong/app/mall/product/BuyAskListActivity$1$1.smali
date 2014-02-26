.class Lcom/jingdong/app/mall/product/BuyAskListActivity$1$1;
.super Ljava/lang/Object;
.source "BuyAskListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/BuyAskListActivity$1;->showError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/BuyAskListActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$1;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity$1;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/BuyAskListActivity$1;->access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity$1;)Lcom/jingdong/app/mall/product/BuyAskListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity;->titleButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$1;

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity$1;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/BuyAskListActivity$1;->access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity$1;)Lcom/jingdong/app/mall/product/BuyAskListActivity;

    move-result-object v0

    .line 130
    const v1, 0x7f070394

    .line 129
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    return-void
.end method
