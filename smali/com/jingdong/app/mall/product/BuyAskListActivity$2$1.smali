.class Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;
.super Ljava/lang/Object;
.source "BuyAskListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/BuyAskListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$2;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity$2;)Lcom/jingdong/app/mall/product/BuyAskListActivity;

    move-result-object v2

    const-class v3, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity$2;)Lcom/jingdong/app/mall/product/BuyAskListActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity;->wareId:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->access$1(Lcom/jingdong/app/mall/product/BuyAskListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "name"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity$2;)Lcom/jingdong/app/mall/product/BuyAskListActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->access$2(Lcom/jingdong/app/mall/product/BuyAskListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    iget-object v2, p0, Lcom/jingdong/app/mall/product/BuyAskListActivity$2$1;->this$1:Lcom/jingdong/app/mall/product/BuyAskListActivity$2;

    #getter for: Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->this$0:Lcom/jingdong/app/mall/product/BuyAskListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/BuyAskListActivity$2;->access$0(Lcom/jingdong/app/mall/product/BuyAskListActivity$2;)Lcom/jingdong/app/mall/product/BuyAskListActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/product/BuyAskListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 206
    return-void
.end method
