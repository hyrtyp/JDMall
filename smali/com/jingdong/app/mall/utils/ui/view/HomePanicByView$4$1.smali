.class Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;
.super Ljava/lang/Object;
.source "HomePanicByView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

.field private final synthetic val$products:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->val$products:Ljava/util/ArrayList;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->removeAllViews()V

    .line 335
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->val$products:Ljava/util/ArrayList;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getContentView(Ljava/util/List;)Landroid/view/View;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$5(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getHeaderView()Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$6(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->addView(Landroid/view/View;)V

    .line 338
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->addView(Landroid/view/View;)V

    .line 339
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->getBottomDividerView()Landroid/view/View;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->access$7(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->addView(Landroid/view/View;)V

    .line 340
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView$4;)Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomePanicByView;->setVisibility(I)V

    .line 343
    :cond_0
    return-void
.end method
