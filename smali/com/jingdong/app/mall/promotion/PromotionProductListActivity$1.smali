.class Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;
.super Ljava/lang/Object;
.source "PromotionProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->handleActivityRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 146
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    const-class v3, Lcom/jingdong/app/mall/product/CommercialRuleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "title"

    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->titleTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$0(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "detail"

    iget-object v3, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->promotionRuleDetail:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->access$1(Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    const-string v2, "com.360buy:navigationDisplayFlag"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
