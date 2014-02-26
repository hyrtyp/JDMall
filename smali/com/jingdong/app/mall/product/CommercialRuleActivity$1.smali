.class Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;
.super Ljava/lang/Object;
.source "CommercialRuleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/CommercialRuleActivity;->showCommercialRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/CommercialRuleActivity;

.field private final synthetic val$jdnewsDetailContent:Landroid/widget/TextView;

.field private final synthetic val$jdnewsDetailTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/CommercialRuleActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommercialRuleActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;->val$jdnewsDetailTitle:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;->val$jdnewsDetailContent:Landroid/widget/TextView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;->val$jdnewsDetailTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommercialRuleActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommercialRuleActivity;->title:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->access$0(Lcom/jingdong/app/mall/product/CommercialRuleActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;->val$jdnewsDetailContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/CommercialRuleActivity$1;->this$0:Lcom/jingdong/app/mall/product/CommercialRuleActivity;

    #getter for: Lcom/jingdong/app/mall/product/CommercialRuleActivity;->detail:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/CommercialRuleActivity;->access$1(Lcom/jingdong/app/mall/product/CommercialRuleActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
