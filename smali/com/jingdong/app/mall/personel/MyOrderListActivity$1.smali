.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;
.super Ljava/lang/Object;
.source "MyOrderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity;->showVisibleCustomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 615
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$7(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    const v2, 0x7f0702a0

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x4188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 619
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 620
    return-void
.end method
