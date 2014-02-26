.class Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;
.super Ljava/lang/Object;
.source "LimitBuyListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/LimitBuyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 130
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "url"

    iget-object v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://m.jd.com/help/app/miaosha.html"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/LimitBuyListActivity$1;->this$0:Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    #getter for: Lcom/jingdong/app/mall/product/LimitBuyListActivity;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/LimitBuyListActivity;->access$0(Lcom/jingdong/app/mall/product/LimitBuyListActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c071c
        :pswitch_0
    .end packed-switch
.end method
