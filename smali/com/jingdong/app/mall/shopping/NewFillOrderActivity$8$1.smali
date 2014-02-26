.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8$1;
.super Ljava/util/TimerTask;
.source "NewFillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;

    .line 888
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutYouhuiContent:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$15(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 893
    return-void
.end method
