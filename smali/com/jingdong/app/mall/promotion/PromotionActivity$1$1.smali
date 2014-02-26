.class Lcom/jingdong/app/mall/promotion/PromotionActivity$1$1;
.super Ljava/lang/Object;
.source "PromotionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$1;->this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$1;->this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)Lcom/jingdong/app/mall/promotion/PromotionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->noDateTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$3(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/promotion/PromotionActivity$1$1;->this$1:Lcom/jingdong/app/mall/promotion/PromotionActivity$1;

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->this$0:Lcom/jingdong/app/mall/promotion/PromotionActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity$1;->access$0(Lcom/jingdong/app/mall/promotion/PromotionActivity$1;)Lcom/jingdong/app/mall/promotion/PromotionActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/promotion/PromotionActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/promotion/PromotionActivity;->access$4(Lcom/jingdong/app/mall/promotion/PromotionActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    return-void
.end method
