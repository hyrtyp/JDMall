.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 616
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mShakeData:Lcom/jingdong/common/entity/ShakeData;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$1(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/common/entity/ShakeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/ShakeData;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->couponType:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$2(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$1;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->receiveCoupon:Landroid/widget/Button;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$3(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Landroid/widget/Button;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->loadAchieveCoupon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$4(Lcom/jingdong/app/mall/shake/ShakeDialogNew;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;)V

    .line 617
    return-void
.end method
