.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createPickAlertDiglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$webView:Landroid/webkit/WebView;

.field private final synthetic val$zhitiListView:Landroid/widget/ListView;

.field private final synthetic val$zhituMapBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/webkit/WebView;Landroid/widget/ListView;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$zhitiListView:Landroid/widget/ListView;

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$zhituMapBtn:Landroid/widget/Button;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 754
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$zhitiListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$zhituMapBtn:Landroid/widget/Button;

    const v1, 0x7f070444

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 759
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$webView:Landroid/webkit/WebView;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14$1;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->post(Ljava/lang/Runnable;)V

    .line 772
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$zhitiListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$14;->val$zhituMapBtn:Landroid/widget/Button;

    const v1, 0x7f070445

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
