.class Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1;
.super Ljava/lang/Object;
.source "FloorProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->toList(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->noDateTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$18(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$10(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 317
    return-void
.end method
