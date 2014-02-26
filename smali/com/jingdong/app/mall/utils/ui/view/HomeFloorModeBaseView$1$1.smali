.class Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;
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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->setVisibility(I)V

    .line 192
    return-void
.end method
