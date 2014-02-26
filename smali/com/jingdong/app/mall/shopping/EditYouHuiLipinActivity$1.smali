.class Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$1;
.super Ljava/lang/Object;
.source "EditYouHuiLipinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #calls: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setCouponView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$0(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #calls: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setLipinDataView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$1(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->loadingBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$2(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    return-void
.end method
