.class Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1457
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1460
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1462
    :sswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->finish()V

    goto :goto_0

    .line 1465
    :sswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->avoidMoreTimeClick()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$13(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1466
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$14(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->isCanClickButton:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$15(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->avoidMoreTimeClicked()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$16(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1471
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->optionsHomeShare()Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$17(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1473
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const v2, 0x7f07054d

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1476
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-static {v1, v0}, Lcom/jingdong/common/utils/ShakeUtils;->handelShare(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 1478
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v2, "share_sns"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$18(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 1479
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v2, "shake_shake"

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$19(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 1480
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mJLOGEvent:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$20(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getShakeParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1483
    .end local v0           #text:Ljava/lang/String;
    :sswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const-string v2, "shake_singer"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1484
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->avoidMoreTimeClick()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$13(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1485
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$14(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$21(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->isCanClickButton:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$15(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->avoidMoreTimeClicked()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$16(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1490
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeOnClickListener;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->forwardPopularityList()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$22(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    goto/16 :goto_0

    .line 1460
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c063a -> :sswitch_0
        0x7f0c063b -> :sswitch_1
        0x7f0c0649 -> :sswitch_2
    .end sparse-switch
.end method
