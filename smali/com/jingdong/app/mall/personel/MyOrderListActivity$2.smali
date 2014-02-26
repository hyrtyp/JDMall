.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$2;
.super Ljava/lang/Object;
.source "MyOrderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity;->goneCustomView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    :cond_0
    return-void
.end method
