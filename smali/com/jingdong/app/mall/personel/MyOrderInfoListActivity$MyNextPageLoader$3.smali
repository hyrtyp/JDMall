.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;
.super Ljava/lang/Object;
.source "MyOrderInfoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 527
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$4(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$4(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v1

    const v2, 0x7f0702a0

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$4(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x4188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 531
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->mNoOrderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$4(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 532
    return-void
.end method
