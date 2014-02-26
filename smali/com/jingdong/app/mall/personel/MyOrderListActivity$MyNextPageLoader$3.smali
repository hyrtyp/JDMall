.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$3;
.super Ljava/lang/Object;
.source "MyOrderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    return-void
.end method
