.class Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;
.super Ljava/lang/Object;
.source "SlideScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->mSalesPromotion:Lcom/jingdong/app/mall/home/slide/SalesPromotion;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$3(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/app/mall/home/slide/SalesPromotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/home/slide/SalesPromotion;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityProductList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$4(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$2(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 552
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/home/slide/SlideScreen;->showHeadView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$5(Lcom/jingdong/app/mall/home/slide/SlideScreen;)V

    .line 553
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityProductList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/SlideScreen;->access$4(Lcom/jingdong/app/mall/home/slide/SlideScreen;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->this$0:Lcom/jingdong/app/mall/home/slide/SlideScreen;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;->access$0(Lcom/jingdong/app/mall/home/slide/SlideScreen$ActivityListNextPageLoader;)Lcom/jingdong/app/mall/home/slide/SlideScreen;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/home/slide/SlideScreen;->activityOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 554
    return-void
.end method
