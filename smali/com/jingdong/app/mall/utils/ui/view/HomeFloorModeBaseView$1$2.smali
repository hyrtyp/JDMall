.class Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;
.super Ljava/lang/Object;
.source "HomeFloorModeBaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;

.field private final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;->val$list:Ljava/util/ArrayList;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;->val$list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->initUI(Ljava/util/ArrayList;)V

    .line 177
    :cond_0
    return-void
.end method
