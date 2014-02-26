.class Lcom/jingdong/app/mall/shopping/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/JDColorProductModel;

    .line 721
    .local v0, colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CameraActivity;->doClick(Lcom/jingdong/common/entity/JDColorProductModel;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$24(Lcom/jingdong/app/mall/shopping/CameraActivity;Lcom/jingdong/common/entity/JDColorProductModel;)V

    .line 722
    return-void
.end method
