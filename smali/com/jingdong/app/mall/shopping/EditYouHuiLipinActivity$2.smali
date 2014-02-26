.class Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;
.super Ljava/lang/Object;
.source "EditYouHuiLipinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->handleClickEvent()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->updateYouhuiInfo()V

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ExtraNewCurrentOrder"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$3(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->finish()V

    .line 122
    return-void
.end method
