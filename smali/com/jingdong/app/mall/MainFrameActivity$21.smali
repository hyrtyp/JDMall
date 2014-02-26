.class Lcom/jingdong/app/mall/MainFrameActivity$21;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->validatCartIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$carStateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

.field private final synthetic val$num:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$21;->val$carStateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    iput-object p2, p0, Lcom/jingdong/app/mall/MainFrameActivity$21;->val$num:Ljava/lang/Integer;

    .line 1834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$21;->val$carStateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$21;->val$num:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->setNum(Ljava/lang/Integer;)V

    .line 1838
    return-void
.end method
