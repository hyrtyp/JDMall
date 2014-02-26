.class Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

.field private final synthetic val$data:Ljava/util/ArrayList;

.field private final synthetic val$isCacheBack:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity$1;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;->val$data:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;->val$isCacheBack:Z

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->loadingFail:Landroid/view/View;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$3(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$1;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$1;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$1;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$1;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;->val$data:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$1$1;->val$isCacheBack:Z

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->refreshFloorView(Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$4(Lcom/jingdong/app/mall/home/NewHomeActivity;Ljava/util/ArrayList;Z)V

    .line 276
    return-void
.end method
